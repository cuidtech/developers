import { ExchangeRatesQuery } from '../../generated';

export type ExchangeRate = ExchangeRatesQuery['exchangeRates'][0];

export type ExchangeRateKey = keyof Omit<ExchangeRate, '__typename'>;
