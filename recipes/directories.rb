user = node['msp']['admin_user']
user_dir = mac_os_x? ? '/Users' : '/home'
user_home = ::File.join(user_dir, user)

directory ::File.join(user_home, 'Documents')
directory ::File.join(user_home, 'coding')
