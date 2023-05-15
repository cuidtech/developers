import { useQuery } from '@apollo/client';
import { useState } from 'react';
import DatePickerComponent from './components/datePicker';
import RatesTable from './components/ratesTable';
import { GET_EXCHANGE_RATES } from './queries/queries';

export type ExchangeRate = {
    country: string;
    code: string;
    amount: number;
    currency: string;
    rate: number;
};

function Loader() {
    return (
        <div className="w-full h-24 p-4 bg-gray-100 flex justify-center items-center">
            <h3 className="font-semibold animate-pulse text-lg text-gray-600">Loading...</h3>
        </div>
    );
}
function Error() {
    return (
        <div className="w-full h-24 p-4 bg-gray-200 flex justify-center items-center">
            <div className="w-full flex items-center justify-center flex-col">
                <h3 className="font-semibold text-lg">Something went wrong. </h3>
                <span className="text-sm"> Please try again later.</span>
            </div>
        </div>
    );
}

function App() {
    const [rateDate, setRateDate] = useState<Date>(new Date());
    const { loading, data } = useQuery<{ rates: ExchangeRate[] }>(GET_EXCHANGE_RATES, {
        variables: { rateDate },
    });

    return (
        <div className="bg-white p-4 flex justify-center flex-col max-w-4xl border-2 mx-auto mt-4">
            <div className="flex justify-between">
                <h2 className="mb-4 text-xl font-bold text-gray-700 flex-grow">Exchange Rates</h2>
                <div className="flex flex-col justify-end mb-2">
                    <DatePickerComponent date={rateDate} setDate={setRateDate} />
                    <span className="font-thin text-sm">Select a date to query.</span>
                </div>
            </div>
            {(loading && <Loader />) || (data && <RatesTable exRates={data?.rates} />) || <Error />}
        </div>
    );
}

export default App;
