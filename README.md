ruby_basic Cookbook
===================

A [Chef](http://getchef.com/) cookbook for install ruby on a node.

Requirements
------------

## Platforms

* Ubuntu 
* CentOS
* Debian
* Fedora

## Cookbook Dependencies:

This cookbook depends on:

* [apt](https://supermarket.chef.io/cookbooks/apt) '~> 2.7.0'
* [build-essential](https://supermarket.chef.io/cookbooks/build-essential) '~> 2.2.3'

Attributes
==========

* `node['ruby_basic']['install_method']` - The installation method for installing ruby on the node. Default is `source`
* `node['ruby_basic']['ruby']['version']` - The version of Ruby you would like to install. Default is `2.1.5-p273`

Recipes
=======

default
-------

The main recipe. Set your install_method which will call the appropriate recipe.

package
-------

This recipe will install ruby via the package manager of the node.

source
------

This recipe will install the build-tools needed to install Ruby from source. 

Authors
=======

* Author:: Cris Gallardo (c@cristhekid.com)

