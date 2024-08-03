FROM ghcr.io/c032/docker-alpine:3.20

USER root
RUN apk add supercronic

USER alpine
WORKDIR /home/alpine
COPY ./crontab ./crontab

CMD ["/usr/bin/supercronic", "/home/alpine/crontab"]
