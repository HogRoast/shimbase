Overview
========
An object oriented database abstraction library. The aim is to provide a simple library for manipulating relational database tables via python objects. The abstraction should allow for any relational database implementation (e.g. SQLite3) to be plugged in, meaning application code can be written in a database independent fashion.

The library has been built to be as generic as possible, however the only implementation provided currently is for SQLite3 so there may be a slight leaning towards this implementation. This will be ironed out as more implementations are added.

This package comes with a MIT license, so feel free to do what you like with it.

Installation
============
This package is generated using setuptools and requires 'tox' for environment management, 'nose' for testing, 'coverage' for coverage and 'sphinx' for documentation. 

The full package and source code can be pulled/cloned from https://github.com/HogRoast/shimbase.

Once pulled, install dependencies and create a distribution by running the following from the root directory...

::

    python setup.py develop 

From this point on, you can run the unit tests and coverage...

::

    tox 
 
Or recreate these docs using the following...

::

    tox -e docs 

Requirements
------------
* python      3.7+
* tox         3.1.0+
* coverage    4.5.1+
* pluggy      0.3.1+
* py          1.4.31+
* randomize   0.13+
* sphinx      1.8.1+

Usage
=====
The main class (*database.Database*) provides the database interface; it is required to be constructed with a valid implementation object (a sub-class of *dbimpl.DatabaseImpl*). 

A generator application (*gendbo.py* & *gendbo.ini*) is provided that will create DatabaseObjects for each new table in the schema file (*createdb.sql*). Also provided is a test database (*test.db*) for the purposes of unit testing.

To create the test DatabaseObjects run the following from the templates directory...

::

    python gendbo.py gendbo.ini

To create your own DatabaseObjects you will need to create the following...

    * a configuration file similar to *gendbo.ini*
    * a database schema file similar to *create_db.dql*
    * modify the content of the configuration file to point to your schema file and the paths for your DatabaseObjects .py, .sql and test files.

Once this is done you can execute *gendbo.py*  but providing your own configuration file as argument, the DatabaseObject files will be generated in the paths you have specified.

Package Structure
==================
::

    |- coverage.ini
    |- shimbase
    |   |- database.py
    |   |- db
    |   |   |- createdb.sql
    |   |   |- test.db
    |   |   |- ...
    |   |- dbimpl.py
    |   |- docs
    |   |   |- conf.py
    |   |   |- index.rst
    |   |   |- installation.rst
    |   |   |- make.bat
    |   |   |- modules.rst
    |   |   |- overview.rst
    |   |   |- package_structure.rst
    |   |   |- usage.rst
    |   |   |- ...
    |   |- gendbo.ini
    |   |- gendbo.py
    |   |- sqlite3impl.py
    |   |- templates
    |   |   |- dbsrc.tmpl
    |   |   |- dbodata.tmpl
    |   |   |- dbotest.tmpl
    |   |- tests
    |   |   |- coverage
    |   |   |   |- ...
    |   |   |- test_database.py
    |   |   |- test_sqlite3impl.py
    |   |   |- ...
    |   |- ...
    |- LICENSE.txt
    |- readme.md
    |- setup.py

