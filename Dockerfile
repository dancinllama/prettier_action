FROM node:lts-alpine3.9
RUN apk update && apk upgrade && apk add --no-cache bash git openssh
RUN apk add --no-cache git=2.22.2-r0 \
    --repository https://alpine.global.ssl.fastly.net/alpine/v3.10/community \
    --repository https://alpine.global.ssl.fastly.net/alpine/v3.10/main
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
