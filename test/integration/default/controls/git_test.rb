control 'gitconfig' do
  title '.gitconfig presence'
  desc 'Verify existence of .gitconfig file'

  if os.darwin?
    describe file('/Users/mjmerin/.gitconfig') do
      it { should exist }
    end
  end

  describe command('git -v') do
    it { should exist }
  end
end
