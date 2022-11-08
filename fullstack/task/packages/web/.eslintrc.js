const path = require('path');
const baseConfig = require('../../.eslintrc.js');

module.exports = {
    ...baseConfig,
    env: {
        browser: true,
        es6: true,
    },
    extends: ['plugin:react/recommended', ...baseConfig.extends],
    parserOptions: {
        ecmaFeatures: {
            jsx: true,
        },
        project: path.resolve(__dirname, './tsconfig.json'),
        tsconfigRootDir: __dirname,
        sourceType: 'module',
    },
};
