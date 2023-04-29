import { Injectable, Logger } from '@nestjs/common';
import { HttpService } from '@nestjs/axios';
import { AxiosError } from 'axios';
import { catchError, firstValueFrom } from 'rxjs';
import { ExchangeRate } from '@cuid/entities';
import { convertTabletoJSON, extractBetween } from '../../util/http.util';

const FX_URL =
    'https://www.cnb.cz/en/financial-markets/foreign-exchange-market/fx-rates-of-other-currencies/fx-rates-of-other-currencies/';

@Injectable()
export class ExchangeRateService {
    private readonly logger = new Logger(ExchangeRateService.name);

    constructor(private readonly httpService: HttpService) {}

    public getExchangeRates = async () => {
        const { data } = await firstValueFrom(
            this.httpService.get(FX_URL).pipe(
                catchError((error: AxiosError) => {
                    this.logger.error(error.response.data);
                    throw Error('An error occurred when retrieving exchange rates!');
                })
            )
        );
        const table = extractBetween(data, '<table>', '</table>');
        return convertTabletoJSON(table) as ExchangeRate[];
    };
}
