import fetch from 'node-fetch';
import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '../../entities';
import { cnbConfig } from '../../config';

@Injectable()
export class ExchangeRateService {
    // eslint-disable-next-line class-methods-use-this
    private fetchRates = async () => {
        const { url } = cnbConfig;

        const response = await (await fetch(url)).json();

        return response.rates as [ExchangeRate];
    };

    // eslint-disable-next-line class-methods-use-this
    public async getExchangeRates(): Promise<ExchangeRate[]> {
        const rates: [ExchangeRate] = await this.fetchRates();
        return rates;
    }
}
