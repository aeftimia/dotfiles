# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# pip in brew's python
brew install python3 wget
wget bootstrap.pypa.io/get-pip.py
/usr/local/bin/python3 get-pip.py
rm get-pip.py

# virtualenv installed with homebrew's python so sudo isn't needed
pip install virtualenv
pip3 install virtualenv

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
brew cask install emacs

# hub
brew install hub

# hammerspoon
brew cask install hammerspoon

# terraform
brew install terraform

# pytest with xdist plugin
pip install pytest
pip install pytest-xdist

# silver searcher
brew install the_silver_searcher

# entr
brew install entr

# yarn
brew install yarn

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

# Vim plugins
vim +PluginInstall +qall

# tmux
brew install tmux

# direnv
brew install direnv
