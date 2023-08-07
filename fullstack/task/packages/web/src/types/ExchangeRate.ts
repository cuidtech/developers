export type ExchangeRates = {
    exchangeRates: ExchangeRate[];
};

export type ExchangeRate = {
    country: string;
    currency: string;
    amount: number;
    code: string;
    rate: number;
};
