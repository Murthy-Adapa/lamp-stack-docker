# Lamp stack docker container

This Docker container implements a last generation LAMP stack for easy development and testing of web applications.

## Inside the container:
- Ubuntu 16.04
- Apache 2.4.18
- PHP 7.0
- Mysql 5.7

Change the versions of the services in Dockerfile according to your application.


## Installation from [Docker registry hub][Docker registry hub].

Run the following command to download the image

```
docker pull murthyadapa/lamp-stack
```

### Exposed port 
- Port 80 (Apache)
- Port 3306 (Mysql)

### volumes
- /var/www/html  (Apache root directory)

### To create a container

```
docker run -it --rm  murthyadapa/lamp-stack
```


### To run a web application in a container

```
docker run --rm -p 8080:80 -v /path/web-application:/var/www/html  murthyadapa/lamp-stack
```
Now, your http://localhost should run the web-application in the docker container that you created above.
