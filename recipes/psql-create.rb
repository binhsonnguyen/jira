#
# Cookbook Name:: jira
# Recipe:: psql-create
#
# Copyright 2013, Tom Eklöf
#

# create a postgresql database
postgresql_database 'jira' do
  connection(
    :host      => '127.0.0.1',
    :port      => 5432,
    :username  => 'postgres',
    :password  => node['postgresql']['password']['postgres']
  )
  action :create
end
