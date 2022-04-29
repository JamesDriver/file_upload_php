#docker build -t jamesdriver/php-file-up .
#docker run -d -p 8000:80 jamesdriver/php-file-up
FROM php:7.4-apache
WORKDIR /var/www/html
RUN mkdir uploads
RUN chown www-data uploads
ADD ./php /var/www/html
#COPY ./php /var/www/html