import { gql } from '@apollo/client';

export const GET_EXCHANGE_RATES = gql`
    query GetExchangeRates($page: Int = 1, $limit: Int = 10) {
        exchangeRates(page: $page, limit: $limit) {
            exchangeRates {
                country
                currency
                amount
                code
                rate
            }
            totalCount
        }
    }
`;
