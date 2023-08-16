
directories = %w(coding, docs)

control 'directories' do
  title 'what directories are present'
  desc 'Verify specified directories are present'

  if os.darwin?
    directories.each do |dir|

      directory_path = ::File.join('/Users', 'mjmerin', dir)
      describe directory(directory_path) do
        it { should exist }
      end
    end
  end
end
