#
# Cookbook:: hubrick-devops-challenge
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


include_recipe 'nginx::default'

directory '/var/www' do
  user 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

template '/var/www/index.html' do
    source 'index.erb'
end

template "#{node['nginx']['dir']}/sites-available/hubrick" do
  source 'config.erb'
  owner  'root'
  group  'root'
  mode   '0644'
end

nginx_site 'default' do
  enable false
end

nginx_site 'hubrick' do
  enable true
end

service 'nginx' do
  action [:enable, :restart]
end
