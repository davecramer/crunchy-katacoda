#!/usr/bin/bash

# Runs in the background


systemctl enable postgresql-11
systemctl start postgresql-11

sudo update-alternatives --set pgsql-psql /usr/pgsql-11/bin/psql
sudo update-alternatives --set pgsql-pg_dump /usr/pgsql-11/bin/pg_dump
sudo update-alternatives --set pgsql-pg_dumpall /usr/pgsql-11/bin/pg_dumpall
sudo update-alternatives --set pgsql-pg_restore /usr/pgsql-11/bin/pg_restore
sudo update-alternatives --set pgsql-pg_basebackup /usr/pgsql-11/bin/pg_basebackup

sudo -u training psql -c "ALTER SYSTEM SET archive_mode = 'on'"
sudo -u training psql -c "ALTER SYSTEM SET archive_command = '/bin/true'"

systemctl restart postgresql-11