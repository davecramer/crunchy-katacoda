## Start Zookeeper
```
docker run -d -it --rm --name zookeeper -p 2181:2181 -p 2888:2888 -p 3888:3888 debezium/zookeeper:0.10
```{execute}


## Start Kafka
```
docker run -it -d --rm --name kafka -p 9092:9092 --link zookeeper:zookeeper debezium/kafka:0.10
```{execute}

## Start Postgres
```
docker run -it -d --rm --name=pgsql --env-file=pg-env.list --volume=`pwd`/pgconf:/pgconf -d crunchydata/crunchy-postgres:centos7-11.4-2.4.1
```{execute}
