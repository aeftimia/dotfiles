# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Powerline fonts
brew install fontconfig
cp /usr/local/etc/fonts/fonts.conf.bak /usr/local/etc/fonts/fonts.conf
git clone https://github.com/powerline/fonts.git
./fonts/install.sh

# miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda

# iterm2
brew install --cask iterm2

# vim
brew install vim -vd protobuf

# emacs
brew install svn
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro
brew install --cask emacs

# hammerspoon
brew install --cask hammerspoon

# pytest with xdist plugin
pip install pytest
pip install pytest-xdist

# pandoc
brew install pandoc

# latex
brew install --cask basictex

# docker
brew install --cask docker
docker-machine create default

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux
brew install tmux

# xquartz
brew install --cask xquartz

# git completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > git-completion.bash
source ~/git-completion.bash

# black
pip install black
