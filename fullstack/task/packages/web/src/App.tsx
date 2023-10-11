import { gql, ApolloClient } from '@apollo/client';
import { useState } from 'react';
/** @jsxRuntime classic */
/** @jsx jsx */
import { css, jsx } from '@emotion/react';
import { ExchangeRates } from './types/ExchangeRates';
import Table from './Components/Table';
import Loader from './Components/Loader';

// Static
const QUERY = gql`
    {
        exchangeRates {
            date
            rates {
                country
                currncy
                code
                amount
                rate
            }
        }
    }
`;

// Styles
const styles = {
    mainDiv: css`
        font-family: arial;
        display: grid;
        place-items: center;
        background-color: #fff9e8;
        margin: -8px;
    `,
    loadingDiv: css`
        height: 95vh;
        display: flex;
        justify-content: center;
        align-items: center;
    `,
};
function App(props: { client: ApolloClient<unknown> }) {
    const { client } = props;

    // Hooks
    const [data, setData] = useState<ExchangeRates>();

    const loadData = () => {
        client
            .query({
                query: QUERY,
            })
            .then((result) => setData(result.data.exchangeRates));
    };

    if (!data) {
        loadData();
        return (
            <div css={styles.loadingDiv}>
                <Loader size="l" />
            </div>
        );
    }

    return (
        <div css={styles.mainDiv}>
            <h1>Kurzy k {data?.date}</h1>
            <Table data={data?.rates} />
        </div>
    );
}

export default App;
