title 'directories'
coding = '/Users/mjmerin/coding'
docs = '/Users/mjmerin/Documents'
dirs = [coding, docs]

control 'directories' do
  title 'what directories are present'
  desc 'Verify directories are present'

  if os.darwin?
    dirs.each do |dir|
      describe directory(dir) do
        it { should exist }
      end
    end
  end
end
