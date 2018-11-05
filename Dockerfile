FROM nginx:alpine
COPY gitrest.conf index.html /etc/nginx/gitrest/
RUN ln -sf /etc/nginx/gitrest/gitrest.conf /etc/nginx/conf.d/gitrest.conf
VOLUME /var/cache/nginx/gitrest
CMD ["nginx", "-g", "daemon off;"]
