import { gql } from '@apollo/client';

export const GET_EXCHANGE_RATES = gql`
    query GetExchangeRates($date: String!) {
        exchangeRates(date: $date) {
            country
            currency
            amount
            code
            rate
        }
    }
`;
