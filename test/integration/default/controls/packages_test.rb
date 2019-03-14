title 'packages'

packages = %w(libreoffice google-chrome-stable code emacs git nodejs python3 ruby)

control 'packages' do
  title 'what packages are installed'
  desc 'Verify packages are installed'

  packages.each do |dependency|
    describe package(dependency) do
      it { should be_installed }
    end
  end
end
