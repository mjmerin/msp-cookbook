user_name = node['msp']['admin_fullname']
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
