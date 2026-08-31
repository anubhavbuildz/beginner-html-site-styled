FROM ubuntu:24.04

RUN apt update && \
    apt install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
