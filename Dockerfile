
FROM docker:dind


RUN apk add --no-cache bash git


COPY runner.sh /runner.sh


RUN chmod +x /runner.sh


CMD ["/runner.sh"]
