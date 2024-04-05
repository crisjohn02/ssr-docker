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

1. Fluent  `db-fluent`
2. Express `db-express`
3. ACT     `db-act`
4. FAST    `db-fast` 

