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

