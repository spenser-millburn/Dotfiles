
#Theme
ZSH_THEME="eugene"

# OMZ Installation
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Snap
export PATH="/var/lib/snapd/snap/bin:$PATH"

#Github
export GITHUB_TOKEN="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"

#Plugins Sourcing
plugins=(git)

#EOF
source $ZSH/oh-my-zsh.sh

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  # exec tmux
# fi

#DMESG

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mclovin/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mclovin/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mclovin/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mclovin/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

