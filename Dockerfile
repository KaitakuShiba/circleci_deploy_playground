FROM nginx:1.19.4
WORKDIR /html
COPY ./dev.html /usr/share/nginx/html/dev.html
