FROM ubuntu:24.04

RUN apt update && \
    apt install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html

EXPOSE 99

RUN sed -i 's/Listen 80/Listen 99/' /etc/apache2/ports.conf && \
    sed -i 's/<VirtualHost \*:80>/<VirtualHost *:99>/' /etc/apache2/sites-enabled/000-default.conf

CMD ["apachectl", "-D", "FOREGROUND"]
