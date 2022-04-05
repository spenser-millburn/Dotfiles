
# -------------------- Vim --------------------#
alias vim="nvim"
alias vi="nvim"


# -------------------- Fuzzy Finder --------------------#
alias fuzz="locate . | fzf -e" 
alias fuzzd="find . -type d | fzf" 
alias fuzzp="ps aux | fzf -e"
alias fuzzh="eval '\$(history | fzf -e | cut -c 8-)'"
# fuzzr : function - navigation to explicit keywords


# -------------------- Dotfiles --------------------#
alias aliases="vim $HOME/.oh-my-zsh/custom/aliases.zsh && source $HOME/.zshrc"
alias funcs="vim $HOME/.oh-my-zsh/custom/functions.zsh && source $HOME/.zshrc"
alias zshrc="vim $HOME/.zshrc' && source '$HOME/.zshrc'"
 
