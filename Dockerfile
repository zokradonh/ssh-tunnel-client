FROM alpine:latest

LABEL maintainer="az@gft.eu"

RUN apk upgrade && apk add --no-cache openssh-client

COPY start.sh /start.sh
RUN chmod a+x /start.sh

CMD [ "/start.sh" ]
