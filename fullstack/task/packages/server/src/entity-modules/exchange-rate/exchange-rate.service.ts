import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { ConfigService } from '@nestjs/config';
import { HttpService } from '@nestjs/axios';
import { CNBRates } from './types';

@Injectable()
export class ExchangeRateService {
    constructor(private configService: ConfigService, private readonly httpService: HttpService) {}

    public getExchangeRates = async (): Promise<ExchangeRate[]> => {
        const cnbEndpoint = this.configService.get('CNB_URL');
        const response = await this.httpService.axiosRef.get<CNBRates>(cnbEndpoint);
        const ratesForGQL = response.data?.rates.map((rate) => ({
            country: rate.country,
            currency: rate.currency,
            amount: rate.amount,
            rate: rate.rate,
            code: rate.currencyCode,
        }));

        return ratesForGQL;
    };
}
