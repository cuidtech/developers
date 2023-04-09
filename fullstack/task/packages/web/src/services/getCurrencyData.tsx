import {ApolloClient, gql} from "@apollo/client";

interface Props {
    client: ApolloClient<unknown>;
}

export const getCurrencyData = async ({client}: Props) => {
    try {

        const {data} = await client.query({
                            query: gql`
                        query {
                          exchangeRates {
                          amount,
                          code
                          country,
                          currency,
                          rate
                          }
                        }
                       `,
                        });

        return data

    } catch (error) {
        console.error(error);
        throw new Error("Error fetching data");
    }
};
