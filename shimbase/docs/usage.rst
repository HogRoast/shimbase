Usage
=====
The main class (*database.Database*) provides the database interface; it is required to be constructed with a valid implementation object (a sub-class of *dbimpl.DatabaseImpl*). 

A generator application (*gendbo.py*) is provided that will create DatabaseObjects for each new table in the schema file (*createdb.sql*). Also provided is a test database (*test.db*) for the purposes of unit testing.

