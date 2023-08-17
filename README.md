# Merin System Provisioner (MSP) Cookbook

Chef Cookbook used to provision my home systems with a base configuration. 

## Requirements

### Platforms
- Ubuntu 18.04 x86
- Ubuntu 22.04 LTS arm64
- Ubuntu 23.04 arm64
- macOS 10.13.5 High Sierra x86

### Chef

- Chef 14.0+

## Attributes

- `default['msp']['admin_user'] = 'mjmerin'`
- `default['msp']['admin_passwd'] = 'password'`

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