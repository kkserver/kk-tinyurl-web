FROM registry.cn-hangzhou.aliyuncs.com/kk/kk-web:latest

COPY ./lib/lua/tinyurl /lib/lua/tinyurl

COPY ./lib/lua/conf/tinyurl.lua /lib/lua/conf/tinyurl.lua

COPY ./conf.d/default.conf /etc/nginx/conf.d/default.conf
