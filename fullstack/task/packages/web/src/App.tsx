import { Box } from '@mui/material';
import { ExchangeRates } from './modules';

function App() {
    return (
        <Box>
            <Box mx="auto" my={5} minWidth={280} maxWidth={600}>
                <ExchangeRates />
            </Box>
        </Box>
    );
}

export default App;
