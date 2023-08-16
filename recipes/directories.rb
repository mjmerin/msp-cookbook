#
# Cookbook:: msp
# Recipe:: directories
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

user = node['msp']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)

directories = [user_home,
               ::File.join(user_home, 'Documents'),
               ::File.join(user_home, 'coding')]

directories.each do |dir|
  directory "create directory: #{dir}" do
    path dir
    owner user
    mode '0755'
    action :create
  end
end
