First we need to setup PostgreSQL and R

## Components

 - PostgreSQL
	- The world’s most advanced open source database.
 - PostGIS
	- A spatial database extender for PostgreSQL. Adds support for geographic objects allowing location queries to be run in SQL.
 - R
	- An open source language and environment for statistical computing and graphics.
 - PL/R
	- R Procedural Language Handler for PostgreSQL. Enables user-defined SQL functions to be written in the R language. Actively developed since early 2003.

## Steps
 - Install desired versions of PostgreSQL, PostGIS, R, and PL/R Create the database and install Postgres extensions
   - Fortunately this has been taken care of already
 - Install variety of required/interesting R packages 
 - Be sure to install R packages as root or postgres


`createdb gis`{{execute}}

`psql gis`{{execute}}

`create extension postgis;`{{execute}}

`create extension plr;`{{execute}}`