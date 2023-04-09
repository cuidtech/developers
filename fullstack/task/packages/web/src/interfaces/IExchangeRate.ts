export interface Data {
    exchangeRates: ExchangeRate[];
}

export interface ExchangeRate {
    amount:   number;
    code:     string;
    country:  string;
    currency: string;
    date:     Date;
    rate:     string;
}

