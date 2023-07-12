import React from "react";
import {useQuery, gql} from "@apollo/client";

const GET_CHARACTERS = gql`
query {
    exchangeRates{
        country,
        currency,
        amount,
        code,
        rate
    }
}`

function App() {
    // TODO: Add the FE for exchange rates here.

    const {error, loading, data} = useQuery(GET_CHARACTERS);
    console.log({error, loading, data})

    return (
        <div>
            <p>Add the exchange rates here</p>
        </div>
    );
}

export default App;
