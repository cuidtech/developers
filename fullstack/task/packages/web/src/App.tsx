import { Routes, Route } from 'react-router-dom';
import Home from './pages/Home/index';
import ExchangeRate from './pages/ExchangeRate/index';
import MainLayout from './layouts/Main/index';

function App() {
    return (
        <MainLayout>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="exchange-rates" element={<ExchangeRate />} />
            </Routes>
        </MainLayout>
    );
}

export default App;
