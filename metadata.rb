name 'msp'
maintainer 'Mark Merin'
license 'All Rights Reserved'
description 'Installs/Configures Merin systems.'
long_description 'Installs/Configures Merin systems'
version '0.1.0'
chef_version '>= 14.0' if respond_to?(:chef_version)

issues_url 'https://github.com/mjmerin/msp-cookbook/issues'
source_url 'https://github.com/mjmerin/msp-cookbook'

supports 'mac_os_x'
supports 'ubuntu'

depends 'homebrew'
depends 'macos'
