#!/usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  s
  sudo apt-get install curl

  sudo apt-get install zsh
  sudo apt-get install fish
  echo /usr/local/bin/fish | sudo tee -a /etc/shells
  sudo cp $HOME/Dotfiles/fish/fish_is_root_user.fish /usr/share/fish/functions/ 
  chsh -s /usr/local/bin/fish
  curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

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
  sudo cp $HOME/Dotfiles/ubuntu/chsh /etc/pam.d/chsh
  chsh -s $(which fish)
  cp $HOME/Dotfiles/tmux/.tmux.conf $HOME
  rm -rf $HOME/.config/fish
  cp -r $HOME/Dotfiles/fish $HOME/.config
  rm -rf $HOME/.oh-my-zsh/custom
  cp -r $HOME/Dotfiles/zsh/.oh-my-zsh/custom $HOME/.oh-my-zsh
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && mv $HOME/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
  cp -r $HOME/Dotfiles/vim/.SpaceVim.d $HOME
  rm .zshrc
  cp $HOME/Dotfiles/zsh/.zshrc $HOME                                                                                                                                                                                         
  sudo apt-get install fonts-firacode
  dconf load /org/gnome/terminal/legacy/profiles:/ < $HOME/Dotfiles/gnome/terminal/gnome-terminal-profiles.dconf
  # source $ZSH/oh-my-zsh.sh
  # ...
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install curl
  brew install fish
  fish 
  fish_add_path /opt/homebrew/bin
  echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
  chsh -s /opt/homebrew/bin/fish
  sudo cp $HOME/Dotfiles/fish/fish_is_root_user.fish /usr/share/fish/functions/ 
  curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
  brew install fzf

  brew install ranger
  brew install tldr 
  tldr --update
  brew install neovim
  unset ZSH
  curl -sLf https://spacevim.org/install.sh | bash
  brew install gh
  cp $HOME/Dotfiles/tmux/.tmux.conf $HOME
  rm -rf $HOME/.config/fish
  cp -r $HOME/Dotfiles/fish $HOME/.config
  rm -rf $HOME/.oh-my-zsh/custom
  cp -r $HOME/Dotfiles/zsh/.oh-my-zsh/custom $HOME/.oh-my-zsh
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && mv $HOME/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
  cp -r $HOME/Dotfiles/vim/.SpaceVim.d $HOME
  rm .zshrc
  cp $HOME/Dotfiles/zsh/.zshrc $HOME                                                                                                                                                                                         
        # Mac OSX
else
  echo "UNKNOWN OS ERROR"
        # Unknown.
fi

