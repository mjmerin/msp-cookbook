#
# Cookbook:: msp
# Recipe:: default
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

include_recipe 'msp::packages'
include_recipe 'msp::users'
include_recipe 'msp::config'
include_recipe 'msp::git'
include_recipe 'msp::directories'
