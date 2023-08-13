import { Injectable, Logger } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { HttpService } from '@nestjs/axios';
import { catchError, firstValueFrom } from 'rxjs';
import { AxiosError } from 'axios';

@Injectable()
export class ExchangeRateService {
    constructor(private readonly httpService: HttpService) {}

    private readonly logger = new Logger('ExchangeRateService', { timestamp: true });

    public getExchangeRates = async () => {
        const { data } = await firstValueFrom(
            this.httpService
                .get<{
                    rates: {
                        validFor: string;
                        order: number;
                        country: string;
                        currency: string;
                        amount: number;
                        currencyCode: string;
                        rate: number;
                    }[];
                }>('https://api.cnb.cz/cnbapi/exrates/daily')
                .pipe(
                    catchError((error: AxiosError) => {
                        this.logger.error(error.response.data);
                        throw new Error('Failed to fetch exchange reates');
                    })
                )
        );
        const rates: ExchangeRate[] = data.rates.map(
            ({ currency, amount, currencyCode, rate, country }) => {
                return {
                    currency,
                    code: currencyCode,
                    amount,
                    rate,
                    country,
                };
            }
        );

        // TODO: Implement the fetching and parsing of the exchange rates.
        // Use this method in the resolver.

        return rates;
    };
}
