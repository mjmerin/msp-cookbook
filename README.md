# Merin System Provisioner (MSP) Cookbook

Chef Cookbook used to provision my home systems with a base configuration. 

## Requirements

### Platforms

- Ubuntu 16.04 LTS
- Ubuntu 18.04 LTS
- macOS 10.13.5 High Sierra

### Chef

- Chef 14.0+

## Attributes

- `default['msp']['admin_user'] = 'mjmerin'`
- `default['msp']['admin_passwd'] = 'password'`
- `default['msp']['base_pkgs'] = %w(libreoffice google-chrome-stable)`
- `default['msp']['dev_pkgs'] = %w(code emacs git nodejs python3 ruby)`

## Recipes

### Config

Configure `.bash_profile` and machine name. 

**Usage:** `include_recipe 'msp::config'`

### Directories

Create user directories. 

**Usage:** `include_recipe 'msp::directories'`

### Packages

Install my favorite packages.

**Usage:** `include_recipe 'msp::packages'`

### Users

Create users.

**Usage:** `include_recipe 'msp::users'`