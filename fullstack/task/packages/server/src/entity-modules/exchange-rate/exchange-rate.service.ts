import { Injectable, ForbiddenException } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { HttpService } from '@nestjs/axios';
import { map, catchError } from 'rxjs/operators';

@Injectable()
export class ExchangeRateService {
    constructor(private http: HttpService) {}

    public getExchangeRates = async (
        date: string,
        limit: number,
        offset: number
    ): Promise<ExchangeRate[]> => {
        const response = await this.http
            .get('https://api.cnb.cz/cnbapi/exrates/daily', {
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
                            date: rate.validFor,
                            rate: rate.rate,
                            order: rate.order,
                        } as ExchangeRate;
                    });
                }),
                catchError((err) => {
                    throw new ForbiddenException(err);
                })
            )
            .toPromise();

        return response.slice(offset, offset + limit);
    };
}
