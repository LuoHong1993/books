FROM nginx:1.14.2
MAINTAINER luohong <luohong_studio@163.com>
ENV TZ="Asia/Shanghai"
VOLUME /tmp
WORKDIR /books
COPY /Intermediate-Programmer-Study-Note/_book /books/Intermediate-Programmer-Study-Note
COPY nginx.conf /etc/nginx/nginx.conf
