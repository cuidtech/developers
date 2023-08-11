import { gql } from '@apollo/client';

export const exchangeRates = gql`
    query GetExchangeRates {
        exchangeRates {
            amount
            code
            country
            currency
            rate
        }
    }
`;

// in sync with schema.gql
export type ExchangeRate = {
    amount: number;
    code: string;
    country: string;
    currency: string;
    rate: number;
};

export type ExchangeRates = { exchangeRates: ExchangeRate[] };
