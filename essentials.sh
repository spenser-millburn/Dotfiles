#!/usr/bin/env bash

sudo apt-get install zsh
sudo apt-get install locate
sudo apt-get install fzf
sudo apt-get install ranger
sudo apt-get install tldr
tldr --update
sudo apt-get install neovim
unzet ZSH
rm -rf $HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -sLf https://spacevim.org/install.sh | bash

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
chsh -s $(which zsh)
cp Dotfiles/tmux/.tmux.conf $HOME
rm -rf $HOME/.oh-my-zsh/custom
cp -r $HOME/Dotfiles/zsh/.oh-my-zsh/custom $HOME/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && mv $HOME/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
cp -r $HOME/Dotfiles/vim/.SpaceVim.d $HOME
rm .zshrc
cp $HOME/Dotfiles/zsh/.zshrc $HOME
source $HOME/.zshrc
