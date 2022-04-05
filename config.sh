sudo apt update
echo "\n\n"
pip3 install dotfiles
echo "\n\n"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt install gh
echo "\n\n"
sudo apt-get install tmux
echo "\n\n"
sudo apt-get install neovim
mkdir ~/.config/nvim
echo "\n\n"
sudo rm -rf /root/.oh-my-zsh
sudo rm -rf ~/.oh-my-zsh
sudo apt-get install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -L git.io/antigen > antigen.zsh\n
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
