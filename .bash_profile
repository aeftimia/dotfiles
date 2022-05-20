set -o vi
# shopt -s expand_aliases
source ~/aws-helper.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/aeftimia/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/aeftimia/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/aeftimia/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/aeftimia/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="$HOME/.cargo/bin:$PATH"
