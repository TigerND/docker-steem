![Docker](https://blog.logentries.com/wp-content/uploads/2014/05/docker-logo-long.png)

### Prerequisites

Install the most recent version of the Docker Engine for your platform using the official Docker releases, which can also be installed using:
```
wget -qO- https://get.docker.com/ | sh
```

### Quick Start

Download an image with Steem wallet software from [DockerHub](https://hub.docker.com/r/teego/steem_wallet/)
```sh
docker pull teego/steem_wallet
```

Create a data folder
```
mkdir -p ~/.steem/witness_node_data_dir
```

Extract a default config file from an image
```
docker run -it teego/steem_blockchain cat /witness_node_data_dir/config.ini >~/.steem/witness_node_data_dir/config.ini
```

Edit `witness`, `miner` and `mining-threads` options
```ini
# name of witness controlled by this node (e.g. initwitness )
witness = "account"

# name of miner and its private key (e.g. ["account","WIF PRIVATE KEY"] )
miner = ["account","WIF PRIVATE KEY"]

# Number of threads to use for proof of work mining
mining-threads = 2
```

Launch a wallet container
```sh
docker run --name steem_wallet -p 8090:8090 -v ~/.steem/witness_node_data_dir:/witness_node_data_dir teego/steem_wallet
```

Once you have a wallet container running, you can run a command line interface
```sh
docker exec -it steem_wallet /root/steem/programs/cli_wallet/cli_wallet
```

### Preloaded blockchain

Download an image with preloaded blockchain from [DockerHub](https://hub.docker.com/r/teego/steem_blockchain/)
```sh
docker pull teego/steem_blockchain
```

Create a new named container with a volume to share. While this container doesn’t run an application, it reuses the `teego/steem_blockchain` image so that all containers are using layers in common, saving disk space.
```sh
docker create --name steem_blockchain teego/steem_blockchain /bin/true
```

You can then use the `--volumes-from` flag to mount the a data volume.
```sh
docker run --name steem_wallet -p 8090:8090 --volumes-from steem_blockchain -v ~/.steem/witness_node_data_dir/config.ini:/witness_node_data_dir/config.ini teego/steem_wallet
```

### Sources

Dockerfiles are available on [GitHub](https://github.com/TigerND/docker-steem)
