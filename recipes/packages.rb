#
# Cookbook:: msp
# Recipe:: packages
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

if linux?
  packages = node['msp']['std']['base_pkgs'] + node['msp']['std']['dev_pkgs']

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
