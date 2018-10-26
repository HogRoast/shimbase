Installation
============
This package is generated using setuptools and requires 'tox' for environment management, 'nose' for testing, 'coverage' for coverage and 'sphinx' for documentation. 

The full package and source code can be pulled/cloned from __ https://github.com/HogRoast/shimbase.

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

