title 'packages'

packages = %w(git ruby the_silver_searcher ranger htop)

control 'packages' do
  title 'what packages are installed'
  desc 'Verify packages are installed'

  if os.darwin?
    packages.each do |dependency|
      describe file("/usr/local/Cellar/#{dependency}") do
        it { should exist }
      end
    end
  end
end
