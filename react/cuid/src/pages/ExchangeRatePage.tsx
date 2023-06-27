import { ApolloError, gql, useQuery } from "@apollo/client";
import { useEffect, useState } from "react";
import { ExchangeRate } from "../interfaces/ExchangeRate";
import ExchangeRateTable from "../components/ExchangeRateTable";

export default function ExchangeRatePage() {

    const [loading, setLoading] = useState<boolean>(true)
    const [error, setError] = useState<ApolloError | undefined>(undefined)
    const [exchangeRates, setExchangeRates] = useState<ExchangeRate[]>([])

    const GET_EXCHANGE_RATES = gql`
        query GetLocations {
            exchangeRates(date: "2023-06-28") {
                country
                currency
                amount
                code
                rate
            }
        }
    `;
    const { loading: gqlLoading, error: gqlError, data: gqlData } = useQuery<{exchangeRates: ExchangeRate[]}>(GET_EXCHANGE_RATES)

    useEffect(() => {
        setLoading(gqlLoading)
        setError(gqlError)
        if(gqlData && gqlData.exchangeRates) setExchangeRates(gqlData.exchangeRates)
    }, [gqlLoading, gqlError, gqlData])

    
    return (
        <div className="p-10">
            <h1 className="text-2xl font-bold text-blue-500 underline">
                CUID Challenge
            </h1>
            <h3 className="mt-2 text-blue-800">Exchange rates</h3>
            {loading && <p>Loading Data ...</p>}
            {error && <p className="p-red-600 font-bold">An error occured :c <small>({error.message})</small></p>}
            {exchangeRates.length > 0 && <ExchangeRateTable exchangeRates={exchangeRates} />}
        </div>
    )
}