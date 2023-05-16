/* eslint-disable react/function-component-definition */
import React, { useState } from 'react';
import { useQuery } from '@apollo/client';
import './ExchangeRateTable.css';
import { ExchangeRate } from '../../types/exchangeRate';
import { GET_EXCHANGE_RATES } from '../../graphql/queries';
import Spinner from '../Spinner';

const ExchangeRateTable: React.FC = () => {
    const { loading, error, data } = useQuery(GET_EXCHANGE_RATES);
    const [currentPage, setCurrentPage] = useState(1);
    const itemsPerPage = 10;

    if (loading) {
        return <Spinner>Loading...</Spinner>;
    }

    if (error) {
        return <div className="error-message">Error fetching exchange rates: {error.message}</div>;
    }

    // Pagination
    const indexOfLastItem = currentPage * itemsPerPage;
    const indexOfFirstItem = indexOfLastItem - itemsPerPage;
    const currentItems = data.exchangeRates.slice(indexOfFirstItem, indexOfLastItem);

    const totalPages = Math.ceil(data.exchangeRates.length / itemsPerPage);

    const handlePaginationClick = (page: number) => {
        setCurrentPage(page);
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

            <div className="pagination">
                {React.Children.toArray(
                    Array.from({ length: totalPages }).map((_, index) => (
                        <button
                            className={`pagination-item ${
                                currentPage === index + 1 ? 'active' : ''
                            }`}
                            onClick={() => handlePaginationClick(index + 1)}
                            type="button"
                        >
                            {index + 1}
                        </button>
                    ))
                )}
            </div>
        </div>
    );
};

export default ExchangeRateTable;
