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

