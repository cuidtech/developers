import React from 'react';
// eslint-disable-next-line import/no-extraneous-dependencies
import { ExchangeRate } from '@cuid/server/dist/entities';
import { useQuery } from '@apollo/client';
import { EXCHANGE_RATES_GQL_QUERY } from '../utils/constants';

// eslint-disable-next-line react/function-component-definition
const ExchangeRates: React.FC = () => {
    const { data, loading, error } = useQuery(EXCHANGE_RATES_GQL_QUERY);
    // eslint-disable-next-line no-console
    console.log(data);

    const rows: ExchangeRate[] = data?.exchange_rates;
    // eslint-disable-next-line no-console
    console.log(rows);

    if (loading) return <pre>Loading...</pre>;
    if (error) return <pre>{error.message}</pre>;

    return (
        <div>
            <h3>Available Inventory</h3>
            {loading ? (
                <p>Loading ...</p>
            ) : (
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
                        {data &&
                            data.exchange_rates.map((inventory) => (
                                <tr>
                                    <td>{inventory.country}</td>
                                    <td>{inventory.currency}</td>
                                    <td>{inventory.amount}</td>
                                    <td>{inventory.code}</td>
                                    <td>{inventory.rate}</td>
                                </tr>
                            ))}
                    </tbody>
                </table>
            )}
        </div>
    );
};

export default ExchangeRates;
