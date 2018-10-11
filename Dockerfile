FROM alpine:latest

LABEL maintainer="az@gft.eu"

RUN apk upgrade && apk add --no-cache openssh-client

CMD [ "start.sh" ]
