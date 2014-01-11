#
# Cookbook Name:: jira
# Recipe:: psql-create
#
# Copyright 2013, Tom Eklöf
#

# Install dependencies
include_recipe "postgresql::ruby"

# create a postgresql database
postgresql_database 'jiradb' do
  connection(
    :host     => '127.0.0.1',
    :port     => 5432,
    :username => 'postgres',
    :password => node['postgresql']['password']['postgres']
  )
  template 'template0'
  encoding 'UTF8'
  tablespace 'DEFAULT'
  connection_limit '-1'
  owner 'postgres'
  action :create
end
