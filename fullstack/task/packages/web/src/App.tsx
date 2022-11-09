import {Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, withStyles} from "@mui/material";
import {gql, useQuery} from "@apollo/client";
import {ExchangeRate} from "@cuid/server/dist/entities";


const getExchangeRates = gql(`
    query{
        exchangeRates{
            currency
            rate
            amount
            code
            country
    }
    }`);


function App() {
    const {data, loading, error} = useQuery(getExchangeRates);

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error.message}</div>;

    const rows: ExchangeRate[] = data?.exchangeRates;
    return (
        <TableContainer component={Paper}>
            <Table sx={{minWidth: 650}} aria-label="simple table">
                <TableHead  sx={{
                    "& th": {
                        fontWeight: "bold",
                        backgroundColor: "#3f51b5",
                    }
                }}
                >
                    <TableRow>
                        <TableCell>Country</TableCell>
                        <TableCell align="right">Currency</TableCell>
                        <TableCell align="right">Amount</TableCell>
                        <TableCell align="right">Code</TableCell>
                        <TableCell align="right">Rate</TableCell>
                    </TableRow>
                </TableHead>
                <TableBody>
                    {rows?.map((row) => (
                        <TableRow
                            key={row.country}
                            sx={{'&:last-child td, &:last-child th': {border: 0}}}
                        >
                            <TableCell component="th" scope="row">
                                {row.country}
                            </TableCell>
                            <TableCell align="right">{row.currency}</TableCell>
                            <TableCell align="right">{row.amount}</TableCell>
                            <TableCell align="right">{row.code}</TableCell>
                            <TableCell align="right">{row.rate}</TableCell>
                        </TableRow>
                    ))}

                </TableBody>
            </Table>
        </TableContainer>

    );
}

export default App;
