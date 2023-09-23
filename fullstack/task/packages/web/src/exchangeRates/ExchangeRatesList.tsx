import React from 'react';
import {
    Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TableRow,
    Paper,
    styled,
} from '@mui/material';
import { useGetExchangeRatesData } from './data/useGetExchangeRatesData';

const Styled = {
    HeadCell: styled(TableCell)({
        fontSize: '1.2rem',
    }),
    ListWrapper: styled('div')({
        display: 'flex',
        flexDirection: 'column',
        margin: '1rem',
    }),
    Title: styled('div')({
        fontSize: '1.4rem',
        fontFamily: 'roboto',
        marginBottom: '0.8rem',
    }),
};

export function ExchangeRatesList() {
    const { exchangeRates, loading, error } = useGetExchangeRatesData();

    if (loading) {
        return <div>Loading...</div>;
    }

    if (error) {
        return <div>Error: {error.message}</div>;
    }

    return (
        <Styled.ListWrapper>
            <Styled.Title>Exchange Rates</Styled.Title>
            <Paper sx={{ width: '100%', overflow: 'hidden' }}>
                <TableContainer sx={{ maxHeight: 800, maxWidth: '100%' }}>
                    <Table stickyHeader aria-label="Exchange Rates Table">
                        <TableHead>
                            <TableRow>
                                <Styled.HeadCell>Country</Styled.HeadCell>
                                <Styled.HeadCell>Currency</Styled.HeadCell>
                                <Styled.HeadCell>Amount</Styled.HeadCell>
                                <Styled.HeadCell>Code</Styled.HeadCell>
                                <Styled.HeadCell>Rate</Styled.HeadCell>
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
            </Paper>
        </Styled.ListWrapper>
    );
}
