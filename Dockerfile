FROM debian

RUN apt update && apt -y install wget libncurses5 && \
    wget https://github.com/arrayio/array-io-newton/releases/download/initial/array-io-core_0.1.275.deb && \
    dpkg -i array-io-core_0.1.275.deb && \
    mkdir -p /dist

ADD main_genesis.json /dist/main_genesis.json
ADD config.ini /dist/config.ini
ADD api-access.json /dist/api-access.json
ADD log-config.ini /dist/log-config.json

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

## Exposing Ports
EXPOSE 9090:9090
EXPOSE 8090:8090

## Entry point
ENTRYPOINT ["/entrypoint.sh"]
