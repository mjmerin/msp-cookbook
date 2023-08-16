#
# Cookbook:: msp
# Recipe:: config
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

user = node['msp']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
dotfile = mac_os_x? ? '.bash_profile' : '.profile'

if mac_os_x? && node['platform_version'] >= '10.15.7'
  dotfile = '.zshrc'
end

hostname node['msp']['hostname']

remote_file ::File.join(user_home, dotfile) do
  source 'https://raw.githubusercontent.com/mjmerin/config_files/master/.bash_profile'
  action :create
end
