FROM php:7.3.3-cli-alpine3.9

# Install the PHP pdo_mysql extention
RUN docker-php-ext-install pdo_mysql \
# Install the PHP pdo_pgsql extention
&& docker-php-ext-install pdo_pgsql \
# Install the bcmath extention
&& docker-php-ext-install bcmath \
# Install the swoole extention
&& pecl install swoole \
&& docker-php-ext-enable swoole \
# Install the seaslog extention
&& pecl install seaslog \
&& docker-php-ext-enable seaslog \
# Install the redis extention
&& pecl install -o -f redis \
&& rm -rf /tmp/pear \
&& docker-php-ext-enable redis \
