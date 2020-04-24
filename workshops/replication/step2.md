## Configure Environment 


Become the postgres user so that we can easily connect to the database
```
sudo -iu postgres
```{{execute}}

Create a user named davec. Note I am the postgres user so I can create
users

```
createuser davec
```{{execute}}

Now create a database that the user can access
```
createdb -O davec davec
```{{execute}}

Show all of the databases

```
psql -l
```{{execute}}