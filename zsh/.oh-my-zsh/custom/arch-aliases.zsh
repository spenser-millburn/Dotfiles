
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
alias zshrc="vim $HOME/.zshrc && source $HOME/.zshrc"

#Utilities
alias open="dolphin"
alias dinfo="du -ah --exclude './.*' --max-depth=1"
alias alldinfo="du -ah --exclude --max-depth=1"

#Package Manager
alias p="sudo pacman -S"
alias y="yay -S"
alias yr="yay -Rsn"

#Common
alias c="clear"
alias e="exit"

#Google Chrome
alias chrome="google-chrome-stable"

#Google Drive FUSE Filesystem mounting
alias gdrive="google-drive-ocamlfuse ~/GoogleDrive"
alias gdriveum="fusermount -u GoogleDrive"

#ADB 
alias dsn="adb shell cat /persist/dsn"
alias swv="adb shell getprop ro.build.id"

#Jupyter Notebooks
alias jn="jupyter notebook"

# Git 
alias gc="git commit -m"
alias gtree="git lg2"

alias clip="xclip -sel clip input_file.txt"

#dmesg
alias dmesgtusb="sudo dmesg -w -T | grep usb"
alias dmesgt="sudo dmesg -w -T"
