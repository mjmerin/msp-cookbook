#
# Cookbook:: msp
# Test:: config
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

control 'dotfiles' do
  title 'what dot files are available'
  desc 'Verify dot files existence'

  if os.darwin?
    describe file('/Users/mjmerin/.zshrc') do
      it { should exist }
    end

    describe command('echo $SHELL') do
      its('stdout') { should match '/bin/zsh' }
    end
  else
    describe file('/home/mjmerin/.bashrc') do
      it { should exist }
    end

    describe command('echo $SHELL') do
      its('stdout') { should match '/bin/bash' }
    end

  end
end
