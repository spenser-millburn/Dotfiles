#!/usr/bin/env/bash
wget http://tamacom.com/global/global-6.6.5.tar.gz
tar xzfv global-6.6.5.tar.gz
tar xzfv global-6.6.5.tar.gz
./configure --with-exuberant-ctags=/usr/bin/ctags
sudo make install
sudo apt-get install ctags
sudo apt-get install clangd
sudo apt-get install clangd
  
