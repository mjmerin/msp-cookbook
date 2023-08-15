#
# Cookbook:: msp
# Recipe:: directories
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.


user = node['msp']['admin_user']
user_home = ::Dir.home(user)

directory ::File.join(user_home, 'Documents')
directory ::File.join(user_home, 'coding')
