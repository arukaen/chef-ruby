#
# Cookbook Name:: ruby_basic
# Recipe:: default
#
# Copyright 2015
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apt'

include_recipe "ruby_basic::#{node['ruby_basic']['install_method']}"
