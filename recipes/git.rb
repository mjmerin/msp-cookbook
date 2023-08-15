#
# Cookbook:: msp
# Recipe:: git
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.


user = node['msp']['admin_user']
user_name = node['msp']['admin_fullname']
user_home = ::Dir.home(user)
gitconfig = ::File.join(user_home, '.gitconfig')
user_email = node['msp']['admin_user'] + '@gmail.com'

execute "Set git user name to #{user_name}" do
  command "git config --global user.name \"#{user_name}\""
  only_if "git -v | grep version"
end

execute "Set git user email to #{user_email}" do
  command "git config --global user.email #{user_email}"
  only_if "git -v | grep version"
end

execute 'Set git core editor to emacs' do
  command 'git config --global core.editor emacs'
  only_if "git -v | grep version"
end

execute "Copy .gitconfig from vagrant user home over to #{user_home}" do
  command "cp /Users/vagrant/.gitconfig #{gitconfig}"
  only_if "git -v | grep version"
end
