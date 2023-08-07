import { gql, useQuery } from '@apollo/client';

type Rate = {
    country: string;
    currency: string;
    amount: number;
    currencyCode: string;
    rate: number;
};

function App() {
    const { loading, error, data } = useQuery(gql`
        query GetExchangeRates {
            exchangeRates {
                country
                currency
                amount
                currencyCode
                rate
            }
        }
    `);

    if (loading) return <p>Loading...</p>;
    if (error)
        return (
            <p>
                Error : {error.message} {JSON.stringify(error, null, 2)}
            </p>
        );

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
                        <tr key={exchangeRate.currencyCode}>
                            <td>{exchangeRate.country}</td>
                            <td>{exchangeRate.currency}</td>
                            <td>{exchangeRate.amount}</td>
                            <td>{exchangeRate.currencyCode}</td>
                            <td>{exchangeRate.rate} CZK</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}

export default App;
