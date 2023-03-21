import React from 'react';
// eslint-disable-next-line import/no-extraneous-dependencies
import { ExchangeRate } from '@cuid/server/dist/entities';
import { useQuery } from '@apollo/client';
import { EXCHANGE_RATES_GQL_QUERY } from '../utils/constants';
import './css/table.css';

// eslint-disable-next-line react/function-component-definition
const ExchangeRates: React.FC = () => {
    const { data, loading, error } = useQuery(EXCHANGE_RATES_GQL_QUERY);

    const rows: ExchangeRate[] = data?.exchange_rates;

    if (error) return <h2>{error.message}</h2>;

    return (
        <div>
            <br />
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
                        {rows &&
                            rows.map((oneRate) => (
                                <tr key={oneRate.code}>
                                    <td id="country">{oneRate.country}</td>
                                    <td id="currency">{oneRate.currency}</td>
                                    <td id="amount">{oneRate.amount}</td>
                                    <td id="code">{oneRate.code}</td>
                                    <td id="rate">{oneRate.rate}</td>
                                </tr>
                            ))}
                    </tbody>
                </table>
            )}
        </div>
    );
};

export default ExchangeRates;
