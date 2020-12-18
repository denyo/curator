FROM alpine:3.12.3

ARG VERSION=5.8.0
RUN apk --no-cache upgrade && apk --no-cache add py-pip
RUN pip install elasticsearch-curator==${VERSION}

USER nobody:nobody
ENTRYPOINT ["/usr/bin/curator"]
