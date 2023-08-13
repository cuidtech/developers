import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { ConfigService } from '@nestjs/config';
import { HttpService } from '@nestjs/axios';
import { catchError, firstValueFrom } from 'rxjs';

import { CNBRates } from './types';

@Injectable()
export class ExchangeRateService {
    constructor(private configService: ConfigService, private readonly httpService: HttpService) {}

    public getExchangeRates = async (): Promise<ExchangeRate[]> => {
        const cnbEndpoint = this.configService.get('CNB_URL');
        const ratesResponse = await firstValueFrom(this.httpService.get<CNBRates>(cnbEndpoint));
        const ratesForGQL = ratesResponse.data.rates.map((rate) => ({
            country: rate.country,
            currency: rate.currency,
            amount: rate.amount,
            rate: rate.rate,
            code: rate.currencyCode,
        }));

        return ratesForGQL;
    };
}
