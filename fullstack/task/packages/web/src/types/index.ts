export type ExchangeRate = {
    country: string;
    currency: string;
    amount: number;
    code: string;
    date: string;
    rate: number;
    order: number;
};

export type ExchangeRatesData = {
    exchangeRates: ExchangeRate[];
};

export type QueryVars = {
    date: string;
    limit: number;
    offset: number;
};
