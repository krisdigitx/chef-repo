#
# Cookbook Name:: yum
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "yum -y update" do
  command "yum -y update"
end
