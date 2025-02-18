FROM debian:latest

LABEL org.opencontainers.image.authors="albertorequena.alu@iespacomolla.es"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y apache2 \
    php -y \
    php-mysql \
    php-yaml \
    curl \
    nano 
RUN apt-get install -y libapache2-mod-php php-mysqli

# Habilitar módulos de Apache
RUN a2enmod rewrite 
RUN a2enmod headers

RUN service apache2 restart

EXPOSE 80

# Comando para iniciar Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]