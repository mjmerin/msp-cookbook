default['msp']['admin_user'] = 'mjmerin'
default['msp']['admin_passwd'] = 'password'
default['msp']['admin_fullname'] = 'Mark John Merin'
default['msp']['hostname'] = 'mmsystem'

default['msp']['std']['base_pkgs'] = %w(libreoffice htop)
default['msp']['nix']['base_pkgs'] = %w(google-chrome-stable)

default['msp']['std']['dev_pkgs'] = %w(emacs git)
default['msp']['nix']['dev_pkgs'] = %w(code silversearcher-ag)

default['homebrew']['casks'] = %w(emacs google-chrome iterm2 visual-studio-code)
default['homebrew']['formulas'] = %w(archey4 git htop ranger the_silver_searcher tree wifi-password)
