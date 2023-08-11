import { useQuery } from '@apollo/client';
import { ExchangeRates, exchangeRates } from './gql';

function App() {
    // TODO: Add the FE for exchange rates here.
    const { loading, error, data } = useQuery<ExchangeRates>(exchangeRates);

    if (loading) {
        return <div>Loading...</div>;
    }
    if (error) {
        return <pre>{JSON.stringify(error, null, 2)}</pre>;
    }
    if (!data) {
        return 'Empty table';
    }
    return (
        <div>
            <h1>Exchange rates</h1>
            <table>
                <thead>
                    <tr>
                        <th>Country</th>
                        <th>Amount</th>
                        <th>Rate</th>
                    </tr>
                </thead>
                <tbody>
                    {data.exchangeRates.map((exchangeRate) => (
                        <tr key={exchangeRate.country}>
                            <td>{exchangeRate.country}</td>
                            <td>{exchangeRate.amount}</td>
                            <td>{exchangeRate.rate}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}

export default App;
