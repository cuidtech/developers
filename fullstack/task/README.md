# Fullstack Developer Task

This task is designed to test the way you work with a semi-built system - you will need to understand the way the system works and build on it, using the same technologies and guidelines.

Since this is a fullstack task, it includes two parts - Frontend and Backend. They are described below.

## Backend

The repository includes a simple NestJS backend (`fullstack/task/packages/server`). It comes with an `ExchangeRate` module, and you need to extend it with a GraphQL Query endpoint that would return an array of real exchange rates.

You will get the actual exchange rates from the website of the Czech National Bank. Finding where they are and how to get them is a part of the task.

The code contains a number of TODOs - they should guide you in the right direction.

In general, the choice of technologies is up to you. The only ones you are required to use are NestJS, GraphQL and TypeScript.

## Frontend

After you implement the endpoint for getting the exchange rates, you'll need to build a simple Frontend for it. The repository also includes a skeleton web application for you to work in (`fullstack/task/packages/web`).

The website needs to have the following:
- A table that displays a list of exchange rates (country, currency, amount, code and rate)
- The exchange rates must be taken from the BE using GraphQL
- You must use TypeScript and React

The design of the table (and the website overall) is not the main focus of the task and will not be judged. You will get bonus points if it looks nice though 🙂

# Running the project

Both the Backend and the Frontend are built in TypeScript using Yarn. To get started with the project, follow these steps.

### 1. Install yarn

Follow the instructions from [yarn's website](https://classic.yarnpkg.com/lang/en/docs/install) to install the `yarn` CLI.

### 2. Install dependencies

Navigate to `fullstack/task` and run `yarn install`.

### 3. Start the server

Run `yarn start:dev` in the server directory (or `yarn server start:dev` from the root directory)

### 4. Start the client

Run `yarn start` in the web directory (or `yarn web start` from the root directory)
