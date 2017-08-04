FROM ubuntu:latest
MAINTAINER liyan34
RUN apt update
RUN apt install -y php7.0 php7.0-fpm
RUN apt install -y php7.0-mysql php7.0-mcrypt php7.0-mbstring
RUN apt install -y php-redis
RUN ["service", "php7.0-fpm", "start"]
ADD conf/fpm/pool.d/www.conf /etc/php/7.0/fpm/pool.d/www.conf
EXPOSE 9000
CMD ["php-fpm7.0", "-F"]
