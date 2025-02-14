
FROM docker:dind


RUN apk add --no-cache bash


COPY runner.sh /runner.sh


RUN chmod +x /runner.sh
