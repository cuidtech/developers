import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { ConfigService } from '@nestjs/config';
import { HttpService } from '@nestjs/axios';
import { CnbRate } from 'src/key';

@Injectable()
export class ExchangeRateService {
    constructor(
        private readonly configService: ConfigService,
        private readonly httpService: HttpService
    ) {}

    public async getExchangeRates(): Promise<ExchangeRate[]> {
        const url = this.configService.get('CNB_API');
    
        const data = (await this.httpService.axiosRef.get(url)).data.rates as CnbRate[];
        const exchangeRate = data.map((cnbRate) => {
            return {
                currency: cnbRate.currency,
                amount: cnbRate.amount,
                code: cnbRate.currencyCode,
                country: cnbRate.country,
                rate: cnbRate.rate
            } as ExchangeRate;
        });
        return exchangeRate;
    }
}
