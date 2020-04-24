
## Configure Environment 

This creates a symlink in services to allow starting postgres
and starts the service so we can access postgres

```
systemctl enable postgresql-11
systemctl start postgresql-11
```{{execute}}

