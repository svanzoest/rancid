#
# Cookbook Name:: or_rancid
# Recipe:: default
#
# Copyright (C) 2015 Alexander van Zoest
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'cron'

package 'rancid'

template node['rancid']['etcdir'] + '/rancid.conf' do
  source 'rancid.conf.erb'
  owner  node['rancid']['user']
  group  node['rancid']['group']
  mode   node['rancid']['config_mode']
end

template node['rancid']['etcdir'] + '/lg.conf' do
  source 'lg.conf.erb'
  owner  node['rancid']['user']
  group  node['rancid']['group']
  mode   node['rancid']['config_mode']
end

cron_d 'rancid-run' do
  minute  1
  command node['rancid']['bindir'] + '/rancid-run'
  user  node['rancid']['user']
end

cron_d 'rancid-clean' do
  minute  50
  hour    23
  user  node['rancid']['user']
  command "/usr/bin/find #{node['rancid']['conf']['logdir']} -type f -mtime +2 -exec rm {} \\;"
end
