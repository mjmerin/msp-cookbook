user_name = node['msp']['admin_user']
passwd = node['msp']['admin_passwd']

if mac_os_x?
  macos_user "create admin user #{user_name}" do
    username user_name
    autologin true
    admin true
    password passwd
    action :create
  end
else
  user user_name do
    manage_home true
    gid 'sudo'
    home "/home/#{user_name}"
    shell '/bin/bash'
    password '$1$5o8FPo4C$5kFNhdltQ84.gKBkPir/l/'
    action :create
  end
end
