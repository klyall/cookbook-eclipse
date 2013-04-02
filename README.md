Description
===========
Downloads and installs Eclipse from the specified URL 

Requirements
============
The following cookbooks are dependencies:

* java
* ark


Attributes
==========
node['eclipse']['version'] defaults to 'juno'.
node['eclipse']['url'] defaults to Eclipse download site. 

Usage
=====
Simply include the recipe where you want Eclipse installed.

Examples
--------
    include_recipe 'eclipse'
  
Testing
=======
The recipe has been tested using Test-Kitchen.

To test the recipe:

    bundle install
    
    bundle exec kitchen test