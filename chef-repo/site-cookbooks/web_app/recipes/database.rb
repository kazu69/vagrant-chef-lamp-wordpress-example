#
# Cookbook Name:: web_app
# Recipe:: mysql
#
#

mysql_connection_info = {
  host: node['database']['host'],
  username: node['database']['username'],
  password: node['mysql']['server_root_password'],
}

mysql_database 'my_app' do
  connection mysql_connection_info
  action :create
end

mysql_database_user "app" do
  connection mysql_connection_info
  password "passw0rd"
  database_name "my_app"
  privileges [:select, :update, :insert, :delete]
  action [:create, :grant]
end
