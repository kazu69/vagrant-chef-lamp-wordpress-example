#
# Cookbook Name:: web_app
# Recipe:: default
#
#

service "iptables" do
  supports :status => true, :restart => true, :reload => true, :stop => true
  action [ :disable , :stop ]
end

service "httpd" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable , :start ]
end

directory '/var/www/html' do
  owner 'vagrant'
  group 'vagrant'
  mode '0777'
end

service "httpd"
