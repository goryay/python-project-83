### Hexlet tests and linter status:
[![Actions Status](https://github.com/goryay/python-project-83/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/goryay/python-project-83/actions)
<a href="https://codeclimate.com/github/goryay/python-project-83/maintainability"><img src="https://api.codeclimate.com/v1/badges/62b3dcb19d119f619d1f/maintainability" /></a>
<a href="https://codeclimate.com/github/goryay/python-project-83/test_coverage"><img src="https://api.codeclimate.com/v1/badges/62b3dcb19d119f619d1f/test_coverage" /></a>


[Page Analyzer is a site](https://page-analyzer-ogb0.onrender.com)


## Getting Started


#### Clone the current repository via command:
```https://github.com/goryay/python-project-83.git```


***


## Requirements
* python >= 3.10
* Poetry >= 1.6.1
***


## Required packages
* Flask ^3.0.0
* to avoid psycopg problems with different OS, install psycopg2-binary ^2.9.9
* Every other packages are shown inside pyproject.toml


***


#### Check your pip version with the following command:
```python -m pip --version```


#### Make sure that pip is always up-to-date. If not, use the following:
```python -m pip install --upgrade pip```


#### Next install poetry on your OS. (the link is below)
[Poetry installation](https://python-poetry.org/docs/)
##### don't forget to init poetry packages with command ```poetry init```


### We will be also working with postgreSQL, so make sure that you have installed it on your OS


*** 


## Makefile 
#### For every project should be configured a Makefile to initiate the project without requiring manual commands
#### ``` make install```, which makes poetry install packages from pyproject.toml
#### Current project starts after typing ```make start```


***


## Connecting to the database
#### Use PostgreSQL for local development and production. In test and production environments, the application will have access to the environment variable DATABASE_URL. This is a common way to connect the database to the application:
#### The string has the following format: {provider}://{user}:{password}@{host}:{port}/{db}
```
export DATABASE_URL=postgresql://janedoe:mypassword@localhost:5432/mydb
```


#### To work with PosgreSQL, the psycopg library can be useful
#### To build the application we can write a build.sh bash script of the form:
```
#!/usr/bin/env bash
#Postgres allows you to connect to a remote database by specifying a link to it after the -d flag.
#the link will be loaded from an environment variable that we need to specify on the deploy service.
#next we load our sql file with tables into the connected database
make install && psql -a -d $DATABASE_URL -f database.sql
```


#### Next, make the script executable 
```
chmod +x ./build.sh 
```
#### and add this command to the Makefile:
```
build:
	./build.sh
```
#### Then change the build command to make build in the project settings on the deploy service
#### Thus, in the local environment your application will use the reference to the local database specified in the .env file. And in the deploy environment, the reference to the database you created on render and specified in the environment variables.


***
