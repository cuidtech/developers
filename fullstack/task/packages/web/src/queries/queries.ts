import { gql } from '@apollo/client';

export const GET_EXCHANGE_RATES = gql`
    query getRates($rateDate: String!) {
        rates(rateDate: $rateDate) {
            country
            code
            amount
            rate
            currency
        }
    }
`;
