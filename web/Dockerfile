FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php php-mysql mysql-server

ENV MYSQL_ROOT_PASSWORD res
ENV MYSQL_USER test
ENV MYSQL_PASSWORD root
ENV MYSQL_DATABASE Redlock

COPY ./*.php /var/www/html/

RUN rm /var/www/html/index.html

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R o-wx /var/www/html 

CMD ["apachectl", "-D", "FOREGROUND"]