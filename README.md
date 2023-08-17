# Merin System Provisioner (MSP) Cookbook

Chef Cookbook used to provision my home systems with a base configuration. The packages installed are packages I absolutely must have on 
all systems that I own. 

## Requirements

### Platforms
- Ubuntu 22.04 LTS x86
- Ubuntu 22.04 LTS arm64
- Ubuntu 23.04 arm64
- macOS 11.3.1 Big Sur x86

### Chef

- Chef 14.0+

## Attributes

### User and System Configs

- `default['msp']['admin_user'] = 'mjmerin'`
- `default['msp']['admin_passwd'] = 'password'`
- `default['msp']['admin_fullname'] = 'Mark John Merin'`
- `default['msp']['hostname'] = 'mmsystem'`

### Ubuntu Packages

Base packages are packages I have on all systems. 

- `default['msp']['std']['base_pkgs'] = %w(htop chromium-browser)`
- `default['msp']['nix']['base_pkgs'] = %w()`

Dev packages are packages I use for development work I try to keep on all systems. 

- `default['msp']['std']['dev_pkgs'] = %w(emacs git)`
- `default['msp']['nix']['dev_pkgs'] = %w(silversearcher-ag)`

## Recipes

### Config

Configure `.zshrc` and machine name. 

**Usage:** `include_recipe 'msp::config'`

### Directories

Create user directories. 

**Usage:** `include_recipe 'msp::directories'`

### Git

Create an appropriate `.gitconfig`. 

**Usage:** `include_recipe 'msp::git'`

### Packages

Install my favorite packages.

**Usage:** `include_recipe 'msp::packages'`

### Users

Create users.

**Usage:** `include_recipe 'msp::users'`