# Nicobot Persistence using FoalTS

## Initial steps (already done here)

1. Copy the `Dockerfile` and `docker-compose.yml` (present in the root of this repository) in an empty folder
1. Create an `app` folder next to the `Dockerfile` and create a `.gitkeep` file inside
1. Change the `volumes:` line in the `docker-compose.yml` file to "`- ./:/usr/src/app:cached`"
1. build the container using the command `docker-compose build api`
1. Execute the command `docker-compose run --rm api foal createapp app`
1. Revert the line in step 3 to "`- ./app:/usr/src/app:cached`"

You will end up with the following structure:

```
app
└───config
└───public
└───src
│   package.json
│   ...
Dockerfile
docker-compose.yml
```

You can initialize a git repository in the root.

## How to develop

Run `docker-compose up -d api` and wait 1 or 2 seconds until the project boots up. It should be accessible in a browser using `http://localhost:3001`. If this port is already used, change it in `docker-compose.yml`, i.e. `"8080:3001"`

If you need to execute any FoalTS/npm command, you can use this format: `docker-compose run --rm api foal <insert command>`.

## How to build and run

* TODO how to do it outside docker-compose

## How to execute tests

* TODO how to do it automatically (github, travis, ... ?)