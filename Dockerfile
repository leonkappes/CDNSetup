FROM nginx-apline

COPY ./nginx-cdn.conf /etc/nginx/conf.d/default.conf