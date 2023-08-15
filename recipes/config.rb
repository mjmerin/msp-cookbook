#
# Cookbook:: msp
# Recipe:: config
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.


hostname node['msp']['hostname']

remote_file ::File.join(user_home, dotfile) do
  source 'https://raw.githubusercontent.com/mjmerin/config_files/master/.bash_profile'
  action :create
end
