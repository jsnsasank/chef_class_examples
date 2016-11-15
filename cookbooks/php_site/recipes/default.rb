#
# Cookbook Name:: php_site
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

pkg_list = ['httpd','git','php','mysql']

pkg_list.each do |pkg|
  package pkg do
    action :install
  end
end

service 'httpd' do
  action [:enable, :start]
end

git '/var/www/html' do
  repository  'https://github.com/ls457/php_site.git'
  revision 'master'
  action :sync
  notifies :restart, 'service[httpd]'
end
