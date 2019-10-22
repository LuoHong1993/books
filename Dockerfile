FROM nginx:1.14.2
MAINTAINER luohong <luohong_studio@163.com>
ENV TZ="Asia/Shanghai"
VOLUME /tmp
WORKDIR /books
COPY _book /books
COPY nginx.conf /etc/nginx/nginx.conf
