#
# Cookbook:: msp
# Test:: git
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

control 'gitconfig' do
  title '.gitconfig presence'
  desc 'Verify existence of .gitconfig file'

  gitconfig_path = if os.darwin?
                     '/Users/mjmerin/.gitconfig'
                   else
                     '/home/mjmerin/.gitconfig'
                   end

  describe file(gitconfig_path) do
    it { should exist }
  end

  describe command('git -v') do
    its('stdout') { should match /git version \d.\d\d.\d/ }
  end
end
