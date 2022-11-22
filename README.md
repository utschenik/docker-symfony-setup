# docker-symfony-setip
- Symfony CLI installed
- Composer installed
- Git installed
- xdebug installed

## How to run
Simply in root directory run: <br> 
`docker-compose up`

As the docker-compose specifies, the Dockerfile only runs the *base-stage*.

If you want to access inside the container, for example to create a new symfony application, enter this command: <br>
`docker exec -it docker_symfony bash`

