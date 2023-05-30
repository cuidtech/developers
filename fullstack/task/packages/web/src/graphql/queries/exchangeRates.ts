import { gql } from '@apollo/client';

const GET_EXCHANGE_RATES = gql`
    query {
        exchangeRates {
            country
            currency
            rate
            amount
            code
        }
    }
`;

export default GET_EXCHANGE_RATES;
