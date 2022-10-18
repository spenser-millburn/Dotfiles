#!/bin/bash
cd ~/Dotfiles/i3/

# clone the repository
git clone git@github.com:jbenden/i3-gaps-rounded.git
cd i3-gaps-rounded

# compile
mkdir -p build && cd build
meson ..
ninja
