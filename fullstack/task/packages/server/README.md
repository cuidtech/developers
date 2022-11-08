# cuid server

Contains the code for the cuid backend.

## Installation

Follow these steps for the first-time setup:

### 1. Install yarn

Follow the instructions from [yarn's website](https://classic.yarnpkg.com/lang/en/docs/install) to install the `yarn` CLI.

### 2. Install dependencies

Run `yarn install` in the server directory.

### 3. Install docker

Create [Docker account](https://hub.docker.com/signup).

Install [Docker](https://docs.docker.com/install/).

If you are Windows user and your system doesn't meet [requirements](https://docs.docker.com/docker-for-windows/install/#what-to-know-before-you-install), you need to install [Docker toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/) instead. You'll also have to [map ports in Virtual box](https://github.com/docker/for-win/issues/204#issuecomment-303461340) like this ![image](https://user-images.githubusercontent.com/22978238/74101802-f7297900-4b3d-11ea-890b-abd67763f66e.png).

Login using comand promt (or terminal)

```bash
$ docker login
```

### 4. Create and start the database

- If this is your first-time setup - run `yarn create:dev:db` (or `yarn server create:dev:db` from the root directory). This will create (and overwrite!) a "postgres" docker container for the database.
- Otherwise, run the "postgres" docker container that was created during the first-time setup.

### 5. Start the server

Run `yarn start:dev` (or `yarn server start:dev` from the root directory)

### 6. Install and connect database to pgAdmin 4 (optional)

Follow the instructions from https://www.pgadmin.org/download/

Then:
- Start pgAdmin
- In the sidebar right-click on "Servers" and select "Register > Server..."
- In General set the name to "cuid"
- In connection set Host name to "localhost" and password to "postgres"



## Updating database entities

The databasee synchronization is turned off by default. Whenever you update an entity and want to propagate that change to the database you need to run a migration.

First, generate the migration. Make sure to use a descriptive name, like in a commit message.

```
yarn migration:generate migration-name
```

This will create a file describing all the changes to the database, s.t. it can be replicated or reverted easily. In order to execute the migration run the following:

```
yarn migration:run
```

This will execute all pending migrations.  

You can also revert the most recent migration by running the following:

```
yarn migration:revert
```

## Creating new entity modules

When creating a module for a new entity follow the pattern used by other modules in `src/entity-modules`.

In order for the app to pick your module up make sure to update all imports and exports in `src/entity-modules/index.ts`.

