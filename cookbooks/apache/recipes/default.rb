#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
  action :install
end

service "httpd" do
  action [:enable, :start]
end


timevar = Time.now

template "/var/www/html/index.html" do
  source "index.html.erb"
  variables(
    :myvar1 => timevar
  )
  notifies :restart, "service[httpd]"
end
