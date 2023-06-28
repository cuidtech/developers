import { catchError, firstValueFrom } from 'rxjs';
import { AxiosError } from 'axios';
import { Injectable, InternalServerErrorException, Logger } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { HttpService } from '@nestjs/axios';
import { ExchangeRate } from '@cuid/entities';
import { htmlTableToJson } from '../../tools/html.tools';
import { ExchangeRateArgs } from '../../args/exchange-rate.args';

@Injectable()
export class ExchangeRateService {

    baseUrl: string

    constructor(private configService: ConfigService, private httpService: HttpService) {
        this.baseUrl = this.configService.getOrThrow<string>('CNB_BASE_URL')
    }

    public getExchangeRates = async (args?: ExchangeRateArgs): Promise<ExchangeRate[]> => {
        let results: ExchangeRate[] = [];

        try {
            // set date for fetching the page (optional)
            const date = args && args.date ? args.date : new Date()
            const formattedToday = `${date.getDate()}.${this.formatMonth(date.getMonth())}.${date.getFullYear()}`
            // step 1: fetch the data
            const { data } = await firstValueFrom(
                this.httpService.get<string>(`${this.baseUrl}?date=${formattedToday}`).pipe(
                    catchError((error: AxiosError) => {
                        Logger.error(error)
                        throw 'Error fetching data';
                    }),
                ),
            );
            // grab only the table that displays our data of interest
            const tableStartIndex = data.indexOf('<table class="currency-table">')
            const closingTag = '</table>'
            const tableEndIndex = data.indexOf(closingTag, tableStartIndex)
            const tableElementString = data.substring(tableStartIndex, tableEndIndex + closingTag.length)
            results = htmlTableToJson<ExchangeRate>(tableElementString, new ExchangeRate())
            return results
        }
        // error handling
        catch(err) {
            throw new InternalServerErrorException(err)
        }
    };

    // simple helper for formatting date the way the external URL expects it
    private formatMonth = (month: number): string => {
        const offsetMonth = month + 1
        return offsetMonth >= 10 ? `${offsetMonth}` : `0${offsetMonth}`
    }
}
