/* eslint-disable react/function-component-definition */
import React, { useState } from 'react';
import { useQuery } from '@apollo/client';
import './ExchangeRateTable.css';
import { ExchangeRate } from '../../types/exchangeRate';
import { GET_EXCHANGE_RATES } from '../../graphql/queries';
import Spinner from '../Spinner';
import Pagination from '../Pagination';

const ExchangeRateTable: React.FC = () => {
    const [currentPage, setCurrentPage] = useState(1);
    const itemsPerPage = 10;

    const { loading, error, data, fetchMore } = useQuery(GET_EXCHANGE_RATES, {
        variables: { page: currentPage, limit: itemsPerPage },
    });

    if (loading) {
        return <Spinner>Loading...</Spinner>;
    }

    if (error) {
        return <div className="error-message">Error fetching exchange rates: {error.message}</div>;
    }

    // Pagination
    const currentItems = data.exchangeRates.exchangeRates;
    const totalPages = Math.ceil(data.exchangeRates.totalCount / itemsPerPage);

    const handlePageChange = (page: number) => {
        setCurrentPage(page);
        fetchMore({
            variables: { page, limit: itemsPerPage },
        });
    };

    return (
        <div className="exchange-rate-table">
            <table>
                <thead>
                    <tr>
                        <th>Country</th>
                        <th>Currency</th>
                        <th>Code</th>
                        <th>Amount</th>
                        <th>Rate</th>
                    </tr>
                </thead>
                <tbody>
                    {React.Children.toArray(
                        currentItems.map((rate: ExchangeRate) => (
                            <tr>
                                <td>{rate.country}</td>
                                <td>{rate.currency}</td>
                                <td>{rate.code}</td>
                                <td>{rate.amount}</td>
                                <td>{rate.rate}</td>
                            </tr>
                        ))
                    )}
                </tbody>
            </table>

            <Pagination
                currentPage={currentPage}
                totalPages={totalPages}
                onPageChange={handlePageChange}
            />
        </div>
    );
};

export default ExchangeRateTable;
