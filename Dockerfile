FROM alpine:latest

RUN apk add --no-cache postfix ca-certificates-bundle

VOLUME /var/lib/postfix

EXPOSE 25 465 587

CMD ["/usr/sbin/postfix", "-c", "/etc/postfix", "start-fg"]
