#
# Cookbook:: msp
# Recipe:: users
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

user_name = node['msp']['admin_user']
passwd = node['msp']['admin_passwd']

if mac_os_x?
  macos_user "create admin user #{user_name}" do
    username user_name
    fullname node['msp']['admin_fullname']
    autologin true
    admin true
    password passwd
    action :create
  end
else
  user user_name do
    manage_home true
    username user_name
    gid 'sudo'
    home ::File.join('/', 'home', user_name)
    shell '/bin/bash'
    password '$1$5o8FPo4C$5kFNhdltQ84.gKBkPir/l/'
    action :create
  end
end
