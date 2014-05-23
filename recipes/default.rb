#
# Cookbook Name:: timezone
# Recipe:: default
#
# Copyright 2014, Shrikant Patnaik
#
# All rights reserved - Do Not Redistribute
#

tz = node[:timezone]
current_tz = `cat /etc/timezone`.tr("\n",'')
if platform?('ubuntu', 'debian')
  execute 'Setting New Timezone' do
    command 'dpkg-reconfigure -f noninteractive tzdata'
    not_if { tz.eql?current_tz }
  end
end