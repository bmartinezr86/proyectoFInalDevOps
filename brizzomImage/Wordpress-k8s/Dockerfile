FROM wordpress:php8.1-apache                                

WORKDIR /var/www/html

COPY --chown=www-data:www-data html/wp-content /tmp/wp-content
COPY --chown=www-data:www-data html/wp-admin   /tmp/wp-admin
COPY --chown=www-data:www-data html/wp-includes /tmp/wp-includes

COPY mvProd.sh /tmp
RUN chmod +x /tmp/mvProd.sh

CMD ["apache2-foreground"]