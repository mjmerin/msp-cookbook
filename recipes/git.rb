#
# Cookbook:: msp
# Recipe:: git
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.


user = node['msp']['admin_user']
user_name = node['msp']['admin_fullname']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
gitconfig = ::File.join(user_home, '.gitconfig')
user_email = node['msp']['admin_user'] + '@gmail.com'

execute "Set git user name to #{user_name}" do
  command "git config --global user.name \"#{user_name}\""
end

execute "Set git user email to #{user_email}" do
  command "git config --global user.email #{user_email}"
end

execute 'Set git core editor to emacs' do
  command 'git config --global core.editor emacs'
end

execute "Copy .gitconfig over to #{user_home}" do
  command "cp /Users/vagrant/.gitconfig #{gitconfig}"
end
