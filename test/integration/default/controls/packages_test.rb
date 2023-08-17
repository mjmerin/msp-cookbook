#
# Cookbook:: msp
# Test:: packages
#
# Copyright:: 2023, Mark Merin, All Rights Reserved.

packages = if os.darwin?
             %w(git the_silver_searcher htop visual-studio-code wifi-password iterm2 archey4 google-chrome)
           else
             %w(git silversearcher-ag htop chromium-browser emacs)
           end

control 'packages' do
  title 'what packages are installed'
  desc 'Verify packages are installed'

  packages.each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
end
