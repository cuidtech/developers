import { Injectable } from '@nestjs/common';
import { ExchangeRate } from '@cuid/entities';
import { RATE_HISTORY_LENGTH, EXCHANGE_RATE_CODES, EXCHANGE_RATE_DESCRIPTIONS } from './constants';

@Injectable()
export class ExchangeRateService {
    public getExchangeRates = (historyLength: number | null) => {
        const rates = EXCHANGE_RATE_CODES.map((code) => this.getExchangeRate(code, historyLength));
        return rates;
    };

    public getExchangeRate = (code: string, historyLength: number | null) => {
        const rate = new ExchangeRate();
        rate.code = code;
        rate.description = EXCHANGE_RATE_DESCRIPTIONS[code];
        rate.rates = this.getRandomRateHistory(historyLength);

        return rate;
    };

    private getRandomRateHistory = (count = RATE_HISTORY_LENGTH) => {
        const history = [Math.random() * 100];
        for (let i = 1; i < Math.min(count, RATE_HISTORY_LENGTH); i++) {
            const lastRate = history[i - 1];
            const newRate = lastRate + (Math.random() - 0.5) * 10;
            history.push(newRate);
        }

        return history;
    };
}
