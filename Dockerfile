FROM ubuntu:16.04
MAINTAINER murthyadapa27@gmail.com

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    php7.0 \
    php7.0-mysql
RUN apt-get install apache2 libapache2-mod-php7.0 -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install mysql-server -y

COPY index.php /var/www/html/
COPY start-lamp.sh /usr/sbin/

RUN a2enmod rewrite
RUN chmod +x /usr/sbin/start-lamp.sh
RUN chown -R www-data:www-data /var/www/html

VOLUME /var/www/html

EXPOSE 80
EXPOSE 3306


CMD ["/usr/sbin/start-lamp.sh"]

