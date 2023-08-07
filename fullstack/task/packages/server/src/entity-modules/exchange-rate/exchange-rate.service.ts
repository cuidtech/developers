import fetch from 'node-fetch';
import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '../../entities';
import { cnbConfig } from '../../config';

@Injectable()
export class ExchangeRateService {
    // eslint-disable-next-line class-methods-use-this
    private fetchRates = async () => {
        const { url } = cnbConfig;

        const response = await fetch(url);

        const ratesLines = (await response.text())
            .split('\n')
            .filter((line: string): boolean => !!line);

        ratesLines.splice(0, 2);

        return ratesLines.map((line: string): ExchangeRate => {
            const values = line.split('|');

            return {
                country: `${values[0]}`,
                currency: `${values[1]}`,
                amount: +values[2] || 0, // 0 is questionable
                code: `${values[3]}`,
                rate: +values[4].replace(',', '.') || 0, // 0 is questionable
            };
        });
    };

    // eslint-disable-next-line class-methods-use-this
    public async getExchangeRates(): Promise<ExchangeRate[]> {
        const rates: [ExchangeRate] = await this.fetchRates();
        return rates;
    }
}
