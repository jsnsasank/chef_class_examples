#
# Cookbook Name:: var_example
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



node['var_example']['users'].each do |uname|
  user uname do
     comment "user created by the chef cookbook"
     shell "/bin/bash"
     home "/home/uname"
     password "$1$pvB2Wio8$gT33I/e30Z7GWTPNvOnlH0"
  end
end

['exgrp1', 'exgrp2', 'exgrp3'].each  do |grpname|

  group grpname do
    action :create
  end

end


