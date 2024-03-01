import { useExchangeRatesQuery } from './lib/graphql/generated';
import { format } from 'date-fns';

function ExchangeRates() {
    const today = new Date();
    const formattedToday = format(today, 'yyyy-MM-dd');

    const { data, loading, error } = useExchangeRatesQuery({
        variables: { dateStr: formattedToday },
    });

    return (
        <div>
            <h2>Exchange Rates for {formattedToday}</h2> {/* Headline indicating today's date */}
            {loading && <p>Loading...</p>}
            {error && <p>Error loading data</p>}
            {data && (
                <table className="table-container">
                    <thead>
                        <tr>
                            <th>Country</th>
                            <th>Code</th>
                            <th>Currency</th>
                            <th>Amount</th>
                            <th>Rate</th>
                        </tr>
                    </thead>
                    <tbody>
                        {data.exchangeRates.map(
                            ({ amount, code, country, currency, rate }, index) => (
                                <tr key={index}>
                                    <td>{country}</td>
                                    <td>{code}</td>
                                    <td>{currency}</td>
                                    <td>{amount}</td>
                                    <td>{rate}</td>
                                </tr>
                            )
                        )}
                    </tbody>
                </table>
            )}
        </div>
    );
}

export default ExchangeRates;
