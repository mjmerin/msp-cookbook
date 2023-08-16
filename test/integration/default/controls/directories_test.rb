
directories = %w(coding Documents)

control 'directories' do
  title 'what directories are present'
  desc 'Verify specified directories are present'

  user_home = if os.darwin?
                '/Users/mjmerin'
              else
                '/home/mjmerin/'
              end

  directories.each do |dir|
    directory_path = ::File.join(user_home, dir)
    describe directory(directory_path) do
      it { should exist }
    end
  end
end
