# Zetachain node setup using Docker compose
### Node files links:
> You can see this links in `filesList` file.
- [Zetacore](https://zetachain-external-files.s3.amazonaws.com/binaries/athens2/zetacored)
- [App.toml](https://zetachain-external-files.s3.amazonaws.com/config/athens2/app.toml)
- [Client.toml](https://zetachain-external-files.s3.amazonaws.com/config/athens2/client.toml)
- [Config.toml](https://zetachain-external-files.s3.amazonaws.com/config/athens2/config.toml)
- [Genesis](https://zetachain-external-files.s3.amazonaws.com/genesis/athens2/genesis.json)

#### Node require to open this ports:
- `1317`/TCP (Api server port)
- `9090`/TCP (gRPC server port)
- `9091`/TCP (gRPC-web server port)
- `8545`/TCP (EVM RPC HTTP server port)
- `8546`/TCP (EVM WebSocker server port)
- `26656`/TCP (P2P port)
- `26657`/TCP (Tendermint RPC port)
- `26658`/TCP (ABCI port)
- `26660`/TCP (Prometheus port)

### Setup the node
 1. Run the `create.sh` script to download node files and create docker compose instance.

### Attach to instance
 1. Run `docker stats` command and get `NAME`.
 2. Run `docker attach {name}`.

> #### Press Ctrl+C to detach (or write `exit`).

### If you want enter to the container
 1. Run `docker stats` command and get `CONTAINER ID`.
 2. Run `docker exec -it {container id} bash`

> #### Press Ctrl+C to detach (or write `exit`).
