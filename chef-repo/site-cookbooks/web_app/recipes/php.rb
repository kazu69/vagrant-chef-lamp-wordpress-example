#
# Cookbook Name:: web_app
# Recipe:: php
#
#

%w{php-mysql}.each do |php_module|
  package php_module do
      action :install
    end
end
