FROM ubuntu:14.04

RUN apt-get update && apt-get install -y nginx

ADD index.html /usr/share/nginx/html/index.html

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-g", "daemon off;"]

EXPOSE 80
