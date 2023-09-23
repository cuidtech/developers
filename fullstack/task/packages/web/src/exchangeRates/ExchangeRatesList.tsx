import React from 'react';
import {
    Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TableRow,
    Paper,
} from '@mui/material';
import { useGetExchangeRatesData } from './data/useGetExchangeRatesData';

export function ExchangeRatesList() {
    const { exchangeRates, loading, error } = useGetExchangeRatesData();

    if (loading) {
        return <div>Loading...</div>;
    }

    if (error) {
        return <div>Error: {error.message}</div>;
    }

    return (
        <TableContainer component={Paper}>
            <Table aria-label="Exchange Rates Table">
                <TableHead>
                    <TableRow>
                        <TableCell>Country</TableCell>
                        <TableCell>Currency</TableCell>
                        <TableCell>Amount</TableCell>
                        <TableCell>Code</TableCell>
                        <TableCell>Rate</TableCell>
                    </TableRow>
                </TableHead>
                <TableBody>
                    {exchangeRates?.map((rate) => (
                        <TableRow key={rate.country}>
                            <TableCell>{rate.country}</TableCell>
                            <TableCell>{rate.currency}</TableCell>
                            <TableCell>{rate.amount}</TableCell>
                            <TableCell>{rate.code}</TableCell>
                            <TableCell>{rate.rate}</TableCell>
                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </TableContainer>
    );
}
