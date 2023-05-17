import { useQuery, gql } from '@apollo/client';
import { Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Paper } from '@mui/material';
import { makeStyles } from '@mui/styles';
import { IExchangeRate } from '../IApp';

const useStyles = makeStyles({
  table: {
    minWidth: 650,
  },
  container: {
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
    minHeight: '100vh',
  },
});

const GET_EXCHANGE_RATES = gql`
  query GetExchangeRates($date: String!) {
    exchangeRates(date: $date) {
      country
      currency
      amount
      code
      rate
    }
  }
`;

interface ExchangeRatesTableProps {
  selectedDate: string;
}

export function ExchangeRatesTable({ selectedDate }: ExchangeRatesTableProps) {
  const classes = useStyles();

  const { loading, error, data } = useQuery(GET_EXCHANGE_RATES, {
    variables: { date: selectedDate },
  });


  if (loading) {
    return <p>Loading...</p>;
  }

  if (error) {
    return <p>Error loading exchange rates.</p>;
  }

  const exchangeRates = data.exchangeRates;

  return (
    <div className={classes.container}>
      <TableContainer component={Paper}>
        <Table className={classes.table}>
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
            {exchangeRates.map((rate: IExchangeRate) => (
              <TableRow key={rate.code}>
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
    </div>
  );
}