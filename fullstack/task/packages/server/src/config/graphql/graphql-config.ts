import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { config } from 'dotenv';

config();

const {
    GQL_DEBUG: debug,
    GQL_PLAYGROUND: playground,
    GQL_INTROSPECTION: introspection,
} = process.env;

export const graphqlConfig: ApolloDriverConfig = {
    driver: ApolloDriver,
    autoSchemaFile: 'schema.gql',
    debug: debug === 'true',
    playground: playground === 'true',
    introspection: introspection === 'true',
};
