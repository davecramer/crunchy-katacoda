## Replication

First step create, use pgbackup to create a replica

```
pg_basebackup -D 11/data1 -X stream -R

```{{execute}}

We now need to edit postgresql.conf to change the port the replica is listening on

search for #5432 and change it to 5433
*don't forget to uncomment it*

```
vi 11/data1/postgresql.conf
```{{execute}}

# Start the replica

```
/usr/pgsql-11/bin/pg_ctl -D 11/data1 -l logfile1 start
cat logfile1
```{{execute}}

# Check to make sure we can connect to the replica
*note we are connecting to port 5432*

```
psql -p 5433 davec
```{{execute}}

#Show the table
```
\d
```{{execute}}

#Select from the table to see if the data is there
```
select * from county_typology limit 10;
```{{execute}}