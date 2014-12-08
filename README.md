params-list-builder
==================

Params builder for NodeJS   - Essentially a small, on demand key-value store

Install
-------

````
npm install params-list-builder --save
````


Usage
-----

Pretty simple - require it:

````
plb = require 'params-list-builder'

x = new plb 'Foo'
````

Then we can use the ".add" method to add our key value pair (use .add for each new pair, otherwise it will nest them under the first key)

````
x.add 'name', 'Ben'

````

To get rid of a k/v pair, just use ".drop" and the key name


````
x.drop 'name'

````
You can also do an "update or create" where if will try and update the key, and if it does not exist, will create it for you


````
x.updateOrCreate 'age','12'

````

Save and Load
-------------

use x.save() to save the file to the project root directory as "name".json where name is the name of your params object

use x.load() to load and read the fie

Issues
------

open an issue on github

