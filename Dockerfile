FROM node:8.16.1 as builder
MAINTAINER luohong <luohong_studio@163.com>
WORKDIR /flyswan-admin-ui
COPY . .
RUN npm install
RUN npm run build
RUN rm -f /node_modules
RUN rm -f /src
RUN rm -f /vue-cli

FROM nginx:1.14.2
MAINTAINER luohong <luohong_studio@163.com>
ENV TZ="Asia/Shanghai"
VOLUME /tmp
WORKDIR /flyswan-admin-ui
COPY --from=builder /flyswan-admin-ui/dist .
COPY --from=builder /flyswan-admin-ui/nginx.conf /etc/nginx/nginx.conf
