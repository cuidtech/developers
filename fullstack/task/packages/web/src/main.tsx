import React from 'react';
import ReactDOM from 'react-dom/client';
import { ApolloProvider, ApolloConsumer, ApolloClient, InMemoryCache } from '@apollo/client';
import App from './App';

const client = new ApolloClient({
    uri: 'http://localhost:4000/graphql',
    cache: new InMemoryCache(),
});

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
    <React.StrictMode>
        <ApolloProvider client={client}>
            <ApolloConsumer>{(client) => <App client={client} />}</ApolloConsumer>
        </ApolloProvider>
    </React.StrictMode>
);
