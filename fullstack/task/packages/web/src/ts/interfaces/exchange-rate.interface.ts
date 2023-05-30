export interface IExchangeRate {
    country: string;
    currency: string;
    rate: number;
    amount: number;
    code: string;
}

export interface IExchangeRateQueryResponse {
    exchangeRates: IExchangeRate[];
}
