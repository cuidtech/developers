import ExchangeRateTable from './components/ExchangeRateTable';

function App() {
    // TODO: Add the FE for exchange rates here.
    const currentDate = new Date().toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
    });

    return (
        <div className="container">
            <h1>
                Czech National Bank Exchange Rate - <span>{currentDate}</span>
            </h1>
            <ExchangeRateTable />
        </div>
    );
}

export default App;
