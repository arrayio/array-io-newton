FROM debian

RUN apt update && apt -y install wget && \
    wget https://github.com/arrayio/array-io-newton/releases/download/initial/array-io-core_0.1.192.deb && \
    dpkg -i array-io-core_0.1.192.deb && \
    mkdir -p /dist

ADD main_genesis.json /dist/main_genesis.json
ADD config.ini /dist/config.ini

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

## Exposing Ports
EXPOSE 9090:9090
EXPOSE 8090:8090

## Entry point
ENTRYPOINT ["/entrypoint.sh"]
