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

# fish
brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
fisher up
fisher ls-remote
fisher z
fisher edc/bass
fisher cprintf
fisher docker-completion
brew install fzf; fisher fzf
brew install grc; fisher grc

# fish theme
brew install --with-default-names gnu-sed
fisher omf/theme-robbyrussel

# keybindings
set -U robbyrussel_nogreeting
set -U fish_key_bindings fish_vi_key_bindings

# iterm2
brew cask install iterm2

# vim
brew install vim

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

# direnv
brew install direnv
