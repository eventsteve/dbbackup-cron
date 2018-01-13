FROM alpine:latest
MAINTAINER vahit<vahid.maani@gmail.com>

RUN apk update &&
    apk add xtrabackup rsync mutt postfix openssh

COPY ./bin/ /root

ENTRYPOINT ["bash", "/root/entrypoint.sh"}
CMD ["echo"]

