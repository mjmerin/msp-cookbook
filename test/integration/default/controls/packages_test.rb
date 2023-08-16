
packages = if os.darwin?
             %w(git the_silver_searcher htop)
           else
             %w(git silversearcher-ag htop)
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
