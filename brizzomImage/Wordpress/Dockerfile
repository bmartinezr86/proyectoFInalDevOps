FROM wordpress:php8.1-apache                                

WORKDIR /var/www/html

COPY --chown=www-data:www-data wordpress /var/www/html/

RUN chmod -R 755 /var/www/html/*.* 

CMD ["apache2-foreground"]