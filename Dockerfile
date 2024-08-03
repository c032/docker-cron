FROM ghcr.io/c032/docker-alpine:3.20

USER root
RUN apk add supercronic

USER alpine
WORKDIR /home/alpine
COPY --chown=alpine:alpine ./crontab ./crontab

CMD ["/usr/bin/supercronic", "/home/alpine/crontab"]
