#
# Cookbook:: msp
# Recipe:: git
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

user_name = node['msp']['admin_user']
user_full_name = node['msp']['admin_fullname']
user_email = user_name + '@gmail.com'

if mac_os_x?
  user_home = ::File.join('Users', user_name)
  vagrant_home = ::File.join('Users', 'vagrant')
else
  user_home = ::File.join('home', user_name)
  vagrant_home = ::File.join('home', 'vagrant')
end

vagrant_gitconfig_path = ::File.join(vagrant_home, '.gitconfig')
user_gitconfig_path = ::File.join(user_home, '.gitconfig')

execute "Set git user name to #{user_full_name}" do
  command "git config --global user.name \"#{user_full_name}\""
  only_if 'git --version | grep version'
end

execute "Set git user email to #{user_email}" do
  command "git config --global user.email #{user_email}"
  only_if 'git --version | grep version'
end

execute 'Set git core editor to emacs' do
  command 'git config --global core.editor emacs'
  only_if 'git --version | grep version'
end

execute "Copy .gitconfig from #{vagrant_home} to #{user_home}" do
  command "cp #{vagrant_gitconfig_path} #{user_gitconfig_path}"
  only_if 'git --version | grep version'
  only_if { ::File.exist?("#{vagrant_gitconfig_path}") }
end
