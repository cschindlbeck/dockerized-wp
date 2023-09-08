# Wordpress Site for Solecitos

Handle a WordPress site locally for Solecitos via a dockerized environment

## Known bugs / TODO

- Change wp-config.php in wordpress to correct credentials until wordpress dir is version-controlled


## Dockerized

Three services for DB, apache2 and WordPress, build them via

```bash
docker compose build
```

and run them via

```bash
docker compose up --detach
```

Now you can visit the website at [localhost](http://localhost:80) or you can go to the [Dashboard](http://localhost/wp-admin) to configure it.

In order to stop all containers do

```bash
docker compose down
```
