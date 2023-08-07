import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { HttpService } from '@nestjs/axios';
import { map } from 'rxjs/operators';
import { ConfigService } from '@nestjs/config';
import { lastValueFrom } from 'rxjs';

@Injectable()
export class ExchangeRateService {

    constructor(
        private readonly configService: ConfigService,
        private readonly httpService: HttpService
    ) { }

    public getExchangeRates = async (date: string): Promise<ExchangeRate[]> => {
        const url = this.configService.get('CNB_URL');
        const source = this.httpService
            .get(
                url,
                {
                    params: {
                        date,
                        lang: 'EN',
                    },
                })
            .pipe(
                map((response) => {
                    const rates = response.data.rates;
                    return rates.map((rate) => {
                        return {
                            country: rate.country,
                            currency: rate.currency,
                            amount: rate.amount,
                            code: rate.currencyCode,
                            rate: rate.rate,
                        } as ExchangeRate;
                    });
                })
            )

        const response = await lastValueFrom(source)
        return response
    };
}
