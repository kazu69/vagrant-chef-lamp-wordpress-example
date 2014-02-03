#
# Cookbook Name:: web_app
# Recipe:: wordpress
#
#

ssh_known_hosts_entry 'github.com' do
  key "YOUR SSH ssh-rsa"
end


git "#{node['apache']['docroot_dir']}/" do
  repository "git@github.com:WordPress/WordPress.git"
  action :checkout
  reference "master"
  user node['current_user']
end
