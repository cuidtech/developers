module.exports = {
    parser: '@typescript-eslint/parser',
    root: true,
    plugins: ['@typescript-eslint/eslint-plugin', 'prettier'],
    extends: [
        'airbnb',
        'plugin:@typescript-eslint/recommended',
        'plugin:prettier/recommended',
        'prettier',
        'eslint-config-prettier',
    ],
    settings: {
        'import/resolver': {
            typescript: {},
        },
    },
    ignorePatterns: ['.eslintrc.js'],
    rules: {
        '@typescript-eslint/interface-name-prefix': 'off',
        '@typescript-eslint/explicit-function-return-type': 'off',
        '@typescript-eslint/explicit-module-boundary-types': 'off',
        '@typescript-eslint/no-explicit-any': 'error',
        'import/prefer-default-export': 'off',
        'import/extensions': 'off',
        'no-useless-constructor': 'off',
        'react/jsx-filename-extension': [1, { extensions: ['.tsx', '.jsx'] }],
        'react/react-in-jsx-scope': 'off',
        'no-shadow': 'off',
    },
};
