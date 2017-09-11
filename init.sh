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

# neovim
brew install neovim
pip3 install neovim

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


# markdown vim
mkdir -p ~/.vim/after/ftplugin/markdown/
curl https://raw.githubusercontent.com/suan/vim-instant-markdown/master/after/ftplugin/markdown/instant-markdown.vi

# markdown vim
npm -g install instant-markdown-d
mkdir -p ~/.vim/after/ftplugin/markdown/
curl https://raw.githubusercontent.com/suan/vim-instant-markdown/master/after/ftplugin/markdown/instant-markdown.vim -o ~/.vim/after/ftplugin/markdown/instant-markdown.vim
