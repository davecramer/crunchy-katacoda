## Get a terminal in the PostgreSQL container
```
docker exec -it pgsql /bin/bash
```{execute}

## psql

```
psql
```{execute}

## Create tables

```
CREATE TABLE customers (id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY, name text);
ALTER TABLE customers REPLICA IDENTITY USING INDEX customers_pkey;
INSERT INTO customers (name) VALUES ('joe'), ('bob'), ('sue');
```{execute}

## Create a second database
```
CREATE DATABASE CUSTOMERS;
```{execute}
