user = node['msp']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)
dotfile = mac_os_x? ? '.bash_profile' : '.profile'

hostname node['msp']['hostname']

remote_file ::File.join(user_home, dotfile) do
  source 'https://raw.githubusercontent.com/mjmerin/config_files/master/.bash_profile'
  action :create
end
