FROM registry.cn-shanghai.aliyuncs.com/wahhao/php-fpm:1.0.5

ENV GIT_REPOSITORY=
ENV GIT_USER=
ENV GIT_PASSWORD=

COPY init.sh /init.sh
RUN chmod +x /init.sh
