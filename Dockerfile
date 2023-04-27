FROM ubuntu:jammy

COPY ./nodeFiles/app.toml /root/.zetacored/config/app.toml
COPY ./nodeFiles/client.toml /root/.zetacored/config/client.toml
COPY ./nodeFiles/config.toml /root/.zetacored/config/config.toml
COPY ./nodeFiles/genesis.json /root/.zetacored/config/genesis.json
COPY ./nodeFiles/zetacored /root/.zetacored/bin/zetacored
RUN chmod +x /root/.zetacored/bin/zetacored
RUN mkdir -p /root/.tss
RUN ln -s /root/.zetacored/bin/zetacored /usr/local/bin/zetacored
EXPOSE 1317
EXPOSE 9090-9091
EXPOSE 8545-8546
EXPOSE 6060
EXPOSE 26656-26660
