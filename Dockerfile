FROM alpine:3.10.3
RUN apk add --no-cache curl=7.66.0-r0
ARG GOSS_VERSION=unknown
ENV GOSS_VERSION=$GOSS_VERSION
ADD https://github.com/aelsabbahy/goss/releases/download/v$GOSS_VERSION/goss-linux-amd64 /usr/local/bin/goss
RUN chmod +x /usr/local/bin/goss
CMD ["goss"]
