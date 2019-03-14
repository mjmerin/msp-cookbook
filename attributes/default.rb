default['msp']['admin_user'] = 'mjmerin'
default['msp']['admin_passwd'] = 'password'
default['msp']['admin_fullname'] = 'Mark John Merin'
default['msp']['hostname'] = 'mmsystem'

default['msp']['std']['base_pkgs'] = %w(libreoffice htop)
default['msp']['nix']['base_pkgs'] = %w(google-chrome-stable)

default['msp']['std']['dev_pkgs'] = %w(emacs git python3 ruby)
default['msp']['nix']['dev_pkgs'] = %w(code nodejs silversearcher-ag)

default['msp']['casks'] = %w(emacs google-chrome java visual-studio-code)
default['homebrew']['formulas'] = %w(git git-extras htop node ranger python3 ruby the_silver_searcher tree)
