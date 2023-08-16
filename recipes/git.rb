#
# Cookbook:: msp
# Recipe:: git
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

user_name = node['msp']['admin_fullname']
user_email = node['msp']['admin_user'] + '@gmail.com'

execute "Set git user name to #{user_name}" do
  command "git config --global user.name \"#{user_name}\""
  only_if 'git -v | grep version'
end

execute "Set git user email to #{user_email}" do
  command "git config --global user.email #{user_email}"
  only_if 'git -v | grep version'
end

execute 'Set git core editor to emacs' do
  command 'git config --global core.editor emacs'
  only_if 'git -v | grep version'
end
