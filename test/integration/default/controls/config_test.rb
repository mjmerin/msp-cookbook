control 'dotfiles' do
  title 'what dot files are available'
  desc 'Verify dot files existence'

  if os.darwin?
    describe directory('/Users/mjmerin/.zshrc') do
      it { should exist }
    end

    describe command('echo $SHELL') do
      its(stdout) { should match '/bin/zsh' }
    end
  else
    describe directory('/Users/home/mjmerin/.profile') do
      it { should exist }
    end

    describe command('echo $SHELL') do
      its(stdout) { should match '/bin/bash' }
    end

  end
end
