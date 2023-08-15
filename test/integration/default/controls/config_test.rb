title 'config-files'
user_home = '/Users/mjmerin/'
dirs = [coding, docs]

control 'dot-files' do
  title 'what dot files are available'
  desc 'Verify dot files existence'

  if os.darwin?
      describe directory('/Users/mjmerin/.zshrc') do
        it { should exist }
      end

      describe command('echo $0') do
        its(stdout) {should match '/bin/zsh' }
      end
  end
end
