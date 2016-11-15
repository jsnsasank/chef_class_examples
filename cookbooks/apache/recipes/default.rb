#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package node['apache']['pkgname'] do
  action :install
end

service node['apache']['servicename'] do
  action [:enable, :start]
end
