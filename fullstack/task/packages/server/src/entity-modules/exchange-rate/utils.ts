import { ExchangeRate } from '@cuid/entities';
import { RateItem } from './types';

export const convertExchangeRates = (data: { rates: RateItem[] }): ExchangeRate[] => {
    return data.rates.map(({ amount, country, currency, currencyCode, rate }) => ({
        country: country,
        currency: currency,
        amount: amount,
        rate: rate,
        code: currencyCode,
    }));
};
