import { gql, useQuery } from "@apollo/client";
import { ExchangeRate } from "../interfaces/ExchangeRate";
import ExchangeRateTable from "../components/ExchangeRateTable";

export default function ExchangeRatePage() {


    // date can be provided for the exchangeRates query args. In the following format: "YYYY-MM-DD". e.g: "2023-06-27"
    const GET_EXCHANGE_RATES = gql`
        query GetLocations {
            exchangeRates(date: null) { 
                country
                currency
                amount
                code
                rate
            }
        }
    `;
    const { loading, error, data } = useQuery<{exchangeRates: ExchangeRate[]}>(GET_EXCHANGE_RATES)
    
    return (
        <div className="p-10">
            <h1 className="text-2xl font-bold text-blue-500 underline">
                CUID Challenge
            </h1>
            <h3 className="mt-2 text-blue-800">Exchange rates</h3>
            {loading && <p>Loading Data ...</p>}
            {error && <p className="p-red-600 font-bold">An error occured :c <small>({error.message})</small></p>}
            {data && data.exchangeRates && data.exchangeRates.length > 0 && <ExchangeRateTable exchangeRates={data.exchangeRates} />}
        </div>
    )
}