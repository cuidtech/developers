import { gql } from '@apollo/client';

export const EXCHANGE_RATES_GQL_QUERY = gql`
    # Write your query or mutation here
    query {
        # one: hello,
        exchange_rates {
            country
            currency
            amount
            code
            rate
        }
        # number: getRandomNumber
    }
`;
