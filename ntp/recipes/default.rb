#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'ntp'

template "ntp.conf" do
   path "#{node[:ntp][:dir]}/ntp.conf"
   source "ntp.conf.erb"
   owner "root"
   group "root"
   mode "0644"
end

service "ntp" do
   action [:enable, :start]
end
