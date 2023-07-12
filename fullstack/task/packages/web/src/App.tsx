import React from 'react';
import { useQuery, gql } from '@apollo/client';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';

type Rate = {
    country: string;
    currency: string;
    amount: number;
    code: string;
    rate: number;
};

const GET_CHARACTERS = gql`
    query {
        exchangeRates {
            country
            currency
            amount
            code
            rate
        }
    }
`;

function App() {

    const { error, loading, data } = useQuery(GET_CHARACTERS);

    console.log(data);

    return (
        <div>
            <TableContainer component={Paper}>
                <Table sx={{ minWidth: 650 }} aria-label="simple table">
                    <TableHead>
                        <TableRow>
                            <TableCell>Country</TableCell>
                            <TableCell align="right">Code</TableCell>
                            <TableCell align="right">Amount</TableCell>
                            <TableCell align="right">Currency</TableCell>
                            <TableCell align="right">Rate</TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {data.exchangeRates.map((row: Rate) => (
                            <TableRow
                                key={row.code}
                                sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                            >
                                <TableCell align="left">{row.country}</TableCell>
                                <TableCell align="right">{row.code}</TableCell>
                                <TableCell align="right">{row.amount}</TableCell>
                                <TableCell align="right">{row.currency}</TableCell>
                                <TableCell align="right">{row.rate}</TableCell>
                            </TableRow>
                        ))}
                    </TableBody>
                </Table>
            </TableContainer>
        </div>
    );
}

export default App;
