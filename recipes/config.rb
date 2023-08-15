#
# Cookbook:: msp
# Recipe:: config
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

user = node['msp']['admin_user']
user_home = ::Dir.home(user)
dotfile = mac_os_x? ? '.bash_profile' : '.profile'

hostname node['msp']['hostname']

remote_file ::File.join(user_home, dotfile) do
  source 'https://raw.githubusercontent.com/mjmerin/config_files/master/.bash_profile'
  action :create
end
