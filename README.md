# database_servers_local
![build status](https://github.com/RSAWEB/database_servers_local/actions/workflows/database_servers_local.yaml/badge.svg) <br>

The objective of this solution is to implement docker-compose setups for common database servers to use for local development. <br>

You can copy them into the project to share the `.env` file between your application and the database or run them from here and copy only the database credentials to your project's `.env` file.

## setup instructions
- Install latest version of Docker for the Operating System you will run this on:
    * Docker: https://docs.docker.com/get-docker/
    ```shell
    ./utilities/install_docker_mac.sh
    ```

    - clone repo: 
    ```shell
    git clone git@github.com:praisetompane/database_servers.git
    ```

    - start up docker
    ```shell
        #  MacOS 
        open -a Docker
    ```
    ```shell
        #  Linux     
        sudo systemctl start docker
    ```
    ```shell
        #  Windows, follow the guide below
        https://docs.docker.com/desktop/install/windows-install/
    ```

##  run program
- navigate to the server you want
    ```shell
    # example if you want mysql
    cd ./mysql
    ```
- to start the system run:
    ```shell
        # this might take a while on the first run, please be patient.
        # it is because it downloading the images from Docker Hub if they are not on the machine.
    ./start_system.sh
    ```

- to stop the system run:
    ```shell
    ./stop_system.sh
    ```

## database state management:

- the database state (i.e. tables, stored procedures, indexes, etc) are managed using flyway.
    - flyway docs:  https://documentation.red-gate.com/fd/flyway-documentation-138346877.html
    - technical details for flyway configuration are in the docker-compose file, under `app_etl_db_flyway_migrations` service.
    - migrations location in repo: app_etl/migrations
    - migrations naming scheme: VYYYYMMDDHHSS
        - example: `V202310111851.sql`
    - current database state can be queried with `select * from flyway.flyway_schema_history`