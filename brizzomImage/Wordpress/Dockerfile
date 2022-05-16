FROM wordpress:php8.1-apache                                

WORKDIR /var/www/html

COPY ./wordpress /var/www/html/

RUN chown -R www-data:www-data /var/www/html 

CMD ["apache2-foreground"]