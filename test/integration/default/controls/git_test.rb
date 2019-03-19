title 'gitconfig'

control 'gitconfig' do
  title '.gitconfig presence'
  desc 'Verify existence of .gitconfig file'

  describe file('/Users/mjmerin/.gitconfig') do
    it { should exist }
  end
end
