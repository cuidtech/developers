# Mobile Developer Task

Your goal is to write a simple Flutter application for tracking exchange rate prices. It should have 2 screens - exchange rates list and exchange rate detail. The application should get the data for the exchange rates from the provided server.

The first page should display a table of all currencies with the following information:
- Currency code
- Latest exchange rate
- An indicator whether the rate went up or down since the previous value in the history

The second page should open if any of the rates on the first page were clicked. This page should show the currency code, description, and a line chart of the exchange rate history. 

## Server 

The server exposes a GraphQL query endpoint for getting all the data needed in the app. The rates and their history are generated randomly on every request, but it should still be enough to build the app. You can consider the history to be sorted by time, from the oldest to the newest.

The GraphQL endpoint is http://localhost:4000/graphql, and it has 2 queries:
- `exchangeRates`: returns a list of exchange rates for all currencies. Has a single optional argument `historyLength` that specifies the length of the rate history arrays for all rates. If not specified - full history will be returned.
- `exchangeRate`: returns the information about a single currency. Has a required `code` parameter, and the same optional `historyLength`.

### Installation

The server is built in TypeScript using Yarn. To get it running, follow these steps.

#### 1. Install yarn

Follow the instructions from [yarn's website](https://classic.yarnpkg.com/lang/en/docs/install) to install the `yarn` CLI.

#### 2. Install dependencies

Navigate to `mobile/task/server` and run `yarn install`.

#### 3. Start the server

Run `yarn start:dev` in the server directory.

## Requirements

There are only two requirements - you must use Flutter and GraphQL. The specifics of the implementation and the design are up to you. 

## Submission

Fork this repository and write your solution in `mobile/task/app`. Once you are ready - open a pull request from your fork to this repository and reach out to us 🙂