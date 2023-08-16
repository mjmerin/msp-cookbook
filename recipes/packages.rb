#
# Cookbook:: msp
# Recipe:: packages
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

if linux?
  packages = node['msp']['std']['base_pkgs'] + node['msp']['std']['dev_pkgs']

  apt_repository 'chrome' do
    uri 'http://dl.google.com/linux/chrome/deb'
    distribution 'stable'
    components %w(main)
    key 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
  end

  apt_repository 'vscode' do
    uri 'https://packages.microsoft.com/repos/vscode'
    distribution 'stable'
    components %w(main)
    key 'https://packages.microsoft.com/keys/microsoft.asc'
  end

  apt_update

  packages = packages + node['msp']['nix']['base_pkgs'] + node['msp']['nix']['dev_pkgs']

  packages.each do |install|
    package install do
      options '-y'
      action :install
    end
  end
end

if mac_os_x?
  include_recipe 'homebrew::install_formulas'
  include_recipe 'homebrew::install_casks'
end
