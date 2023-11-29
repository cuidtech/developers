import { useQuery, gql } from '@apollo/client';
import ExchangeRateTable from './ExchangeRateTable';

const EXCHANGE_RATES = gql`
  query GetExchangeRates {
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
    const { loading, error, data } = useQuery(EXCHANGE_RATES);

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error: {error.message}</p>;

    const exchangeRatesData = data.exchangeRates;

    return (
        <div>
            <h1>Exchange Rates</h1>
            <ExchangeRateTable data={exchangeRatesData} />
        </div>
    );
}

export default App;
