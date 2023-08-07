import { gql, useQuery } from '@apollo/client';

type Rate = {
    country: string;
    currency: string;
    amount: number;
    code: string;
    rate: number;
};

function App() {
    const { loading, error, data } = useQuery(gql`
        query GetExchangeRates {
            exchangeRates {
                country
                currency
                amount
                code
                rate
            }
        }
    `);

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error : {error.message}</p>;

    return (
        <div>
            <table>
                <thead>
                    <tr>
                        <th>Country</th>
                        <th>Currency</th>
                        <th>Amount</th>
                        <th>Code</th>
                        <th>Rate</th>
                    </tr>
                </thead>
                <tbody>
                    {data.exchangeRates.map((exchangeRate: Rate) => (
                        <tr key={exchangeRate.code}>
                            <td>{exchangeRate.country}</td>
                            <td>{exchangeRate.currency}</td>
                            <td>{exchangeRate.amount}</td>
                            <td>{exchangeRate.code}</td>
                            <td>{exchangeRate.rate} CZK</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}

export default App;
