FROM registry.cn-shanghai.aliyuncs.com/wahhao/php-fpm:1.0.6

ENV GIT_REPOSITORY=
ENV GIT_USER=
ENV GIT_PASSWORD=

COPY init.sh .
RUN chmod +x init.sh

USER www-data