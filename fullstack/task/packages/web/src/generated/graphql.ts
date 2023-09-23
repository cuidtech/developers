import { gql } from '@apollo/client';
import * as Apollo from '@apollo/client';

export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
export type MakeEmpty<T extends { [key: string]: unknown }, K extends keyof T> = {
    [_ in K]?: never;
};
export type Incremental<T> =
    | T
    | { [P in keyof T]?: P extends ' $fragmentName' | '__typename' ? T[P] : never };
const defaultOptions = {} as const;
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
    ID: { input: string; output: string };
    String: { input: string; output: string };
    Boolean: { input: boolean; output: boolean };
    Int: { input: number; output: number };
    Float: { input: number; output: number };
};

export type ExchangeRate = {
    __typename?: 'ExchangeRate';
    amount: Scalars['Float']['output'];
    code: Scalars['String']['output'];
    country: Scalars['String']['output'];
    currency: Scalars['String']['output'];
    rate: Scalars['Float']['output'];
};

export type Query = {
    __typename?: 'Query';
    exchangeRates: Array<Maybe<ExchangeRate>>;
};

export type GetExchangeRatesQueryVariables = Exact<{ [key: string]: never }>;

export type GetExchangeRatesQuery = {
    __typename?: 'Query';
    exchangeRates: Array<{
        __typename?: 'ExchangeRate';
        country: string;
        currency: string;
        amount: number;
        code: string;
        rate: number;
    } | null>;
};

export const GetExchangeRatesDocument = gql`
    query GetExchangeRates {
        exchangeRates {
            country
            currency
            amount
            code
            rate
        }
    }
`;

/**
 * __useGetExchangeRatesQuery__
 *
 * To run a query within a React component, call `useGetExchangeRatesQuery` and pass it any options that fit your needs.
 * When your component renders, `useGetExchangeRatesQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useGetExchangeRatesQuery({
 *   variables: {
 *   },
 * });
 */
export function useGetExchangeRatesQuery(
    baseOptions?: Apollo.QueryHookOptions<GetExchangeRatesQuery, GetExchangeRatesQueryVariables>
) {
    const options = { ...defaultOptions, ...baseOptions };
    return Apollo.useQuery<GetExchangeRatesQuery, GetExchangeRatesQueryVariables>(
        GetExchangeRatesDocument,
        options
    );
}

export function useGetExchangeRatesLazyQuery(
    baseOptions?: Apollo.LazyQueryHookOptions<GetExchangeRatesQuery, GetExchangeRatesQueryVariables>
) {
    const options = { ...defaultOptions, ...baseOptions };
    return Apollo.useLazyQuery<GetExchangeRatesQuery, GetExchangeRatesQueryVariables>(
        GetExchangeRatesDocument,
        options
    );
}

export type GetExchangeRatesQueryHookResult = ReturnType<typeof useGetExchangeRatesQuery>;
export type GetExchangeRatesLazyQueryHookResult = ReturnType<typeof useGetExchangeRatesLazyQuery>;
export type GetExchangeRatesQueryResult = Apollo.QueryResult<
    GetExchangeRatesQuery,
    GetExchangeRatesQueryVariables
>;
