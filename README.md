# docker-nginx-php-setup
- PHP files are served with NGINX
- PHP container has composer already installed

## How to run
Simply in root directory run: <br> 
`docker-compose up`

If you want to access inside the container, execute this command: <br>
`docker exec -it web_php bash`

## Autoload
If you want to have Autoload, add in the root of the */src* directory <br>
the *composer.json* file with following contents:
```
{
    "autoload": {
        "psr-4": {
            "Organistaion\\ProjectName\\": "/var/www/html/"
        }
    }
}
```
The path */var/www/html/* corresponds with the volume in the *docker-compose.yaml*, 
where your */src* folder is mounted.
