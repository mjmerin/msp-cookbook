default['msp']['admin_user'] = 'mjmerin'
default['msp']['admin_passwd'] = 'password'
defualt['msp']['admin_fullname'] = 'Mark John Merin'
default['msp']['hostname'] = 'mmsystem'

default['msp']['std']['base_pkgs'] = %w(libreoffice htop)
default['msp']['nix']['base_pkgs'] = %w(google-chrome-stable)
default['msp']['mac']['base_pkgs'] = %w(google-chrome)

default['msp']['std']['dev_pkgs'] = %w(emacs git python3 ruby)
default['msp']['nix']['dev_pkgs'] = %w(code nodejs silversearcher-ag)
default['msp']['mac']['dev_pkgs'] = %w(visual-studio-code node)
