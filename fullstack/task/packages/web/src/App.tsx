import { useQuery } from '@apollo/client';
import { GET_EXCHANGE_RATES } from './queries/GetExchangeRates';
import { ExchangeRates, ExchangeRate } from './types/ExchangeRate';
import { ExchangeRatesQueryVariables } from './types/ExchangeRatesQuery';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import TableContainer from '@mui/material/TableContainer';
import Paper from '@mui/material/Paper';
import Title from './table/Title';
import Subtitle from './table/Subtitle';
import Loader from './components/loader/Loader';


function App() {
    // Get data
    const { loading, error, data } = useQuery<ExchangeRates, ExchangeRatesQueryVariables>
        (
            GET_EXCHANGE_RATES,
            {
                variables: {
                    date: currentDate()
                }
            }
        );

    if (loading) {
        return <Loader />;
    }

    if (error) {
        return <h2>{error.toString()}</h2>;
    }

    // Show data
    return (
        <div>
            <Title>Exchange rates</Title>
            <Subtitle>Valid on {new Date().toLocaleString()}</Subtitle>
            <TableContainer component={Paper} elevation={5}>
                <Table size="small">
                    <TableHead>
                        <TableRow>
                            <TableCell align="left"><b>Country</b></TableCell>
                            <TableCell align="left"><b>Code</b></TableCell>
                            <TableCell align="left"><b>Currency</b></TableCell>
                            <TableCell align="right"><b>Amount</b></TableCell>
                            <TableCell align="right"><b>Rate</b></TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {data?.exchangeRates.map((row: ExchangeRate) => (
                            <TableRow key={row.code}>
                                <TableCell align="left">{row.country}</TableCell>
                                <TableCell align="left">{row.code}</TableCell>
                                <TableCell align="left">{row.currency}</TableCell>
                                <TableCell align="right">{row.amount}</TableCell>
                                <TableCell align="right">{row.rate}</TableCell>
                            </TableRow>
                        ))}
                    </TableBody>
                </Table>
            </TableContainer>
        </div>
    );

    function currentDate(): string {
        return new Date().toISOString().slice(0, 10);
    }
}

export default App;
