FROM alpine

WORKDIR /tmp/crystal
RUN apk add --update --no-cache crystal shards musl-dev openssl-dev zlib-dev
COPY src/ ./src
COPY shard.yml .
RUN shards build
CMD [ "/tmp/crystal/bin/t-alpine" ]
