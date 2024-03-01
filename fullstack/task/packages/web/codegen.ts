import type { CodegenConfig } from '@graphql-codegen/cli';

const LOCALHOST_API_URL = 'http://localhost:4000/graphql';

const config: CodegenConfig = {
    overwrite: true,
    schema: LOCALHOST_API_URL,
    documents: 'src/**/*.graphql',
    generates: {
        'src/lib/graphql/generated.ts': {
            plugins: ['typescript', 'typescript-operations', 'typescript-react-apollo'],
        },
    },
};

export default config;
