#
# Cookbook Name:: web_app
# Recipe:: ssh
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/home/vagrant/.ssh/config" do
  source "ssh.config.erb"
end
