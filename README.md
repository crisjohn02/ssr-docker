# Containerised SSR-Platforms

This are the docker configurations to containerised SSR platforms for development purposes ONLY.

## Installation

1. Clone the repository.
2. Clone all platform codebase inside `apps/{app-name}/src/` folder
3. Prepare all the database dumps and gzip them for smaller file sizes and store them inside `dumps/` folder

### Directory tree
- Fluent -  `apps/fluent/src/`
- Express - `apps/express/src/`
- ACT -     `apps/act/src/`
- FAST -    `apps/fast/src/`

## Importing databases

Go to terminal and login WSL by typing the command `wsl`

- Fluent - `docker exec -it db-fluent bash` to enter terminal inside container then import db by `gzip -d -c /home/gzipped_file | mysql -u local -p fluent` and input password `secret`

- Express - `docker exec -it db-express bash` to enter terminal inside container then import db by `gzip -d -c /home/gzipped_file | mysql -u local -p express` and input password `secret`

- ACT - `docker exec -it db-act bash` to enter terminal inside container then import db by `gzip -d -c /home/gzipped_file | mysql -u local -p act` and input password `secret`

- FAST - `docker exec -it db-fast bash` to enter terminal inside container then import db by `gzip -d -c /home/gzipped_file | mysql -u local -p fast` and input password `secret`


### Accessing Database thru phpMyAdmin

You can access the phpMyAdmin thru `http://localhost:8080`

### Database hosts/servers

- `db-fluent`
- `db-express`
- `db-act`
- `db-fast`

### Host

Add the following lines in your hosts file `C:/Windows/System32/drivers/etc/hosts` for windows and `/etc/hosts` for UNIX

```
127.0.0.1	fluent.test
127.0.0.1	express.test
127.0.0.1	act.test
127.0.0.1	impress.test
127.0.0.1	fast.test
127.0.0.1	ws.test
127.0.0.1	fluent-widget.test
127.0.0.1	act-engine.test
127.0.0.1	fast-engine.test
127.0.0.1	express-engine.test
127.0.0.1	fluent-flask.test
```

### App repos

The following are the git repositories of all the apps. Please clone these inside the `src` folder inside respective app folder e.g. `~/ssr-docker/apps/fluent/` and checkout the necessary branch before bulding the containers

```
fluent (main) - https://github.com/developer-ssr/fluent.git
fluent-widget (main) - https://github.com/crisjohn02/backend-fluent.git
fluent-flask (main) - https://github.com/crisjohn02/fluent-flask.git
express (dev-test) - https://github.com/developer-ssr/express-ide.git
express-engine (master) - https://github.com/ddorateS4/explicit_v3.git
act (integrated) - https://github.com/developer-ssr/ast-ide.git
act-engine (version2) - https://github.com/erlzone-sssc/ast-stencil.git
fast (main) - https://github.com/developer-ssr/fast.git
impress (main) - https://github.com/developer-ssr/impress-ide2.git
```
