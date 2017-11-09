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

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# iterm2
brew cask install iterm2

# viw
brew install vim

# Vim plugins
vim +PluginInstall +qall

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

# truffle
npm install -g truffle
 
# pandoc
brew install pandoc

# latex
brew cask install basictex

# docker
brew cask install docker

# virtualbox
brew cask install virtualbox
