### Hexlet tests and linter status:
[![Actions Status](https://github.com/goryay/python-project-83/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/goryay/python-project-83/actions)
<a href="https://codeclimate.com/github/goryay/python-project-83/maintainability"><img src="https://api.codeclimate.com/v1/badges/62b3dcb19d119f619d1f/maintainability" /></a>
<a href="https://codeclimate.com/github/goryay/python-project-83/test_coverage"><img src="https://api.codeclimate.com/v1/badges/62b3dcb19d119f619d1f/test_coverage" /></a>


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
