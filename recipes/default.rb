#
# Cookbook Name:: nginx-wrapper
# Recipe:: default
#
# Copyright (c) 2015 Alexander Merkulov, All Rights Reserved.

include_recipe 'nginx::repo'
include_recipe 'nginx::default'

resources('template[nginx.conf]').cookbook 'nginx-wrapper'
resources("template[#{node['ohai']['plugin_path']}/nginx.rb]").cookbook 'nginx-wrapper'
