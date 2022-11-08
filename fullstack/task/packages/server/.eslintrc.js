const path = require('path');
const baseConfig = require('../../.eslintrc.js');

module.exports = {
    ...baseConfig,
    parserOptions: {
        project: path.resolve(__dirname, './tsconfig.json'),
        tsconfigRootDir: __dirname,
        sourceType: 'module',
    },
    env: {
        node: true,
        jest: true,
    },
    ignorePatterns: [...baseConfig.ignorePatterns, '**/migrations/*.ts'],
};
