# Dockerized Wordpress Site

Dockerized environment in order to develop a WordPress site locally

Don't forget to backup db_data and wordpress directories

## Known bugs / TODO

- Change wp-config.php in wordpress to the credentials set in the docker-compose.yaml

    ```
    /** Database username */
    define( 'DB_USER', getenv_docker('WORDPRESS_DB_USER', 'wpuser') );

    /** Database password */
    define( 'DB_PASSWORD', getenv_docker('WORDPRESS_DB_PASSWORD', 'wppassword') );
    ```


## Usage

Three services for DB, apache2 and WordPress, build them via

```bash
docker compose build
```

and run them via

```bash
docker compose up --detach
```

This will create a db-data and a wordpress directory, the user/group defaults are fine

Now you can visit the website at [localhost](http://localhost:80) or you can go to the [Dashboard](http://localhost/wp-admin) to configure it.

In order to stop all containers do

```bash
docker compose down
```
