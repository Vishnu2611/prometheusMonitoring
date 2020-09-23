# Prometheus Configuration Files

## System Requirements

1. Operating Systems: Ubuntu Linux 14.04 / 16.04 LTS (both 64-bit), or Mac OS 10.12
2. Disk Space - min 50GB
3. RAM - min 4GB (Recommended 8GB)

### Pre-requisites

1. Docker — version 17.06.2-ce or greater
2. Docker Compose — version 1.14.0 or greater

### Installation instructions:(Installing prerequisites)


#### Installing Docker

``` shell
sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

sudo usermod -aG docker <username>
```

#### Installing Docker Compose

``` shell
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo chmod +x /usr/bin/docker-compose
```

### Testing Installation and Checking Versions


#### Docker Version

``` shell
docker --version
```

#### Docker Compose Version

```shell
docker-compose --version
```

### Docker Images Used

* elasticsearch:7.9.1

* justwatch/elasticsearch_exporter:1.1.0

* oliver006/redis_exporter:alpine

* wrouesnel/postgres_exporter:latest

* prom/blackbox-exporter:latest

* prom/node-exporter:latest

* prom/alertmanager:latest

* prom/prometheus:latest

* grafana/grafana:latest

## Running Project

* Create the appropiate env file based on the env.template file

* Start the project locally

    ```shell
        make start
    ```

* Restart the project locally

    ```shell
        make restart
    ```

* Stop the project locally

    ```shell
        make stop
    ```

* Clean the project locally

    ```shell
        make clean
    ```
