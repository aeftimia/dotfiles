set -o vi
shopt -s expand_aliases

source ~/aws-helper.sh
PATH="$PATH:/Users/k28390/.local/bin"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
PATH="/Users/k28390/Library/Python/3.7/bin:${PATH}"
export PATH

# Anaconda 
PATH="/anaconda3/bin/:${PATH}"

# Postgres
PATH="/Library/PostgreSQL/10/bin:$PATH"

alias aws="/Users/k28390/Library/Python/3.7/bin/aws"
alias aws-reset="aws ecr get-login --no-include-email --region us-east-1"

#texlive
export MANPATH="$MANPATH:/Users/k28390/.local/texlive/2019/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/Users/k28390/.local/texlive/2019/texmf-dist/doc/info"
export PATH="$PATH:/Users/k28390/.local/texlive/2019/bin/x86_64-darwin"

# ssl
# export DYLD_FALLBACK_LIBRARY_PATH=/Library/PostgreSQL/10/lib/

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source ~/.aliases
