import { ApolloError } from '@apollo/client';
import { useGetExchangeRatesQuery, ExchangeRate } from '../../generated/graphql';

export type ResultType = {
    exchangeRates: ExchangeRate[] | undefined;
    loading: boolean;
    error: ApolloError | undefined;
};

export const useGetExchangeRatesData = (): ResultType => {
    const { loading, error, data } = useGetExchangeRatesQuery();

    const exchangeRates = data?.exchangeRates as ExchangeRate[] | undefined;

    return {
        exchangeRates,
        loading,
        error,
    };
};
