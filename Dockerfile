# https://github.com/chubin/cheat.sh

FROM alpine:latest

WORKDIR /myapp

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
        bash \
        curl

RUN curl https://cht.sh/:cht.sh > /usr/local/bin/cht.sh && \
    chmod +x /usr/local/bin/cht.sh

ENTRYPOINT [ "bash", "-c", "cht.sh $0 $@" ]
