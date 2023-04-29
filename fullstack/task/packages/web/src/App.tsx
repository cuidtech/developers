import { useQuery, gql } from '@apollo/client';
import { ExchangeRate } from './models/exchange-rate';

const GET_EXCHANGE_RATES = gql`
    query GetExchangeRates {
        exchangeRates {
            code
            country
            currency
            amount
            rate
        }
    }
`;

function App() {
    const { loading, error, data } = useQuery<{ exchangeRates: ExchangeRate[] }>(
        GET_EXCHANGE_RATES
    );
    if (loading) return <p className="loading">Loading...</p>;
    if (error) return <p>Error : {error.message}</p>;
    return (
        <div className="table-wrapper">
            <div className="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Code</th>
                            <th>Country</th>
                            <th>Currency</th>
                            <th>Amount</th>
                            <th>Rate</th>
                        </tr>
                    </thead>
                    <tbody>
                        {data?.exchangeRates.map((exchangeRate) => (
                            <tr key={exchangeRate.code}>
                                <td>{exchangeRate.code}</td>
                                <td>{exchangeRate.country}</td>
                                <td>{exchangeRate.currency}</td>
                                <td>{exchangeRate.amount}</td>
                                <td>{exchangeRate.rate}</td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
}

export default App;
