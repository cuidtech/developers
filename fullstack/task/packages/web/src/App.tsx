import { gql, useQuery } from '@apollo/client';

function App() {
    const GET_EXCHANGE_RATES = gql`
        query GetExchangeRates {
            exchangeRates {
                country
                currency
                amount
                code
            }
        }
    `;

    const { loading, error, data } = useQuery(GET_EXCHANGE_RATES);

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error : {error.message}</p>;

    return (
        <div>
            <table>
                <thead>
                    <tr>
                        <th>Country</th>
                        <th>Code</th>
                        <th>Currency</th>
                        <th>Exchange rate</th>
                    </tr>
                </thead>
                <tbody>
                    {data.exchangeRates.map((rate: any) => (
                        <tr key={rate.code}>
                            <td>{rate.country}</td>
                            <td>{rate.code}</td>
                            <td>{rate.currency}</td>
                            <td style={{ textAlign: 'right' }}>
                                {rate.amount} CZK
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}

export default App;
