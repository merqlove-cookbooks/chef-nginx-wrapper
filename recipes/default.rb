#
# Cookbook Name:: nginx-wrapper
# Recipe:: default
#
# Copyright (c) 2015 Alexander Merkulov, All Rights Reserved.

include_recipe 'chef_nginx::repo'
include_recipe 'chef_nginx::default'

resources('template[nginx.conf]').cookbook 'nginx-wrapper'
