FROM alpine
MAINTAINER 'Jeff Destine'
RUN apk update
RUN apk add nginx
RUN adduser -D -u 1000 -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/index.html
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
