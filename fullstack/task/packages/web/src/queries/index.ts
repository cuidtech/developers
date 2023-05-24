import { gql } from '@apollo/client';

export const GET_EXCHANGE_RATES = gql`
    query GetExchangeRates($date: String!, $limit: Int!, $offset: Int!) {
        exchangeRates(date: $date, limit: $limit, offset: $offset) {
            country
            currency
            amount
            code
            date
            rate
            order
        }
    }
`;
