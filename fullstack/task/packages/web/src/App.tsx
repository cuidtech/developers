import { styled, TableCell } from '@mui/material';
import { ExchangeRatesList } from './exchangeRates/ExchangeRatesList';

const Styled = {
    Wrapper: styled('div')({
        display: 'flex',
        padding: '2rem',
        flexDirection: 'column',
    }),
    Headline: styled('div')({
        fontSize: '2rem',
        fontFamily: 'Roboto',
    }),
};

function App() {
    return (
        <Styled.Wrapper>
            <Styled.Headline>Matouš Najman - CUID interview</Styled.Headline>
            <ExchangeRatesList />
        </Styled.Wrapper>
    );
}

export default App;
