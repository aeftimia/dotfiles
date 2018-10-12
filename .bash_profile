set -o vi
shopt -s expand_aliases
alias cclip='xclip -selection clipboard'
alias tma='tmux -CC attach -t'
alias tmk='tmux kill-session -t'
alias tmn='tmux -CC new-session -s'

source ~/aws-helper.sh
