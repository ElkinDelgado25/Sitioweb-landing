FROM nginxinc/nginx-unprivileged:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY Index.html /usr/share/nginx/html/index.html

EXPOSE 8080
