import Header from './components/Header';
import ExchangeRates from './components/ExchangeRates';

function App() {
    // TODO: Add the FE for exchange rates here.

    const currentTime = new Date().toLocaleString();
    const title = `Exchange Rates for ${currentTime}`;

    return (
        <div>
            <p>Add the exchange rates here</p>
            <Header title={title} />
            <ExchangeRates />
        </div>
    );
}

export default App;
