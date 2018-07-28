FROM crystallang/crystal:latest

ADD . /src
WORKDIR /src
RUN shards build --production
