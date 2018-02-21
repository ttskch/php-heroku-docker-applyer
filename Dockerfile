FROM ttskch/nginx-php-fpm-heroku

#COPY docker/php.ini $PHP_INI_DIR/
#COPY docker/nginx.conf $NGINX_CONFD_DIR/site.conf

USER nonroot
