#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


#Install apache

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "ubuntu"
	package = "apache2"
end

package 'web-service' do
	package_name package
	action :install
end
#Start and enable service
service 'apache' do
	service_name package
	action [:start, :enable]
end

