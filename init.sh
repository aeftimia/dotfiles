# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Powerline fonts
brew install fontconfig
cp /usr/local/etc/fonts/fonts.conf.bak /usr/local/etc/fonts/fonts.conf
git clone https://github.com/powerline/fonts.git
./fonts/install.sh

# iterm2
brew cask install iterm2

# vim
brew install vim

# emacs
brew install svn
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro
brew install --cask emacs

# hammerspoon
brew cask install hammerspoon

# pytest with xdist plugin
pip install pytest
pip install pytest-xdist

# pandoc
brew install pandoc

# latex
brew cask install basictex

# virtualbox
brew cask install virtualbox

# docker
brew cask install docker
docker-machine create default

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux
brew install tmux

# xquartz
brew cask install xquartz

# git completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > git-completion.bash
source ~/git-completion.bash

# black
pip install black
