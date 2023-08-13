import { Box, CircularProgress, Paper, Typography } from '@mui/material';
import { ExchangeRatesComponent } from '../../generated';
import { ExchangeRatesTable } from './exchange-rates-table';

export function ExchangeRates() {
    return (
        <Paper sx={{ width: '100%', overflow: 'hidden' }}>
            <ExchangeRatesComponent>
                {({ data, loading, error }) => {
                    if (loading) {
                        return (
                            <Box
                                minHeight="320px"
                                alignItems="center"
                                justifyContent="center"
                                display="flex"
                            >
                                <CircularProgress />
                            </Box>
                        );
                    }

                    if (error) {
                        return <Typography>{error.message}</Typography>;
                    }

                    if (data) {
                        return <ExchangeRatesTable exchangeRates={data.exchangeRates} />;
                    }

                    return null;
                }}
            </ExchangeRatesComponent>
        </Paper>
    );
}
