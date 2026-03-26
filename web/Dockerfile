FROM nginx:alpine

COPY index.html style.css /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/graph

EXPOSE 80
