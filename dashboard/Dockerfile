FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ARG TZ="Europe/London"

RUN apt-get -qq update -y && \
    apt-get -y -qq install \
    apt-utils \
    nginx \
    php8.1-fpm \
    curl \
    php-curl && \
    echo "Packages Installed"

COPY app /var/www/
RUN chown -R www-data:www-data /var/www
COPY nginx /etc/nginx/sites-enabled/
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD ["/startup.sh"]


