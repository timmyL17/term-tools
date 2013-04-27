#!/bin/bash
set -e

mkdir -p ~/.fonts
cp ~/term-tools/vim/bundle/powerline/font/PowerlineSymbols.otf ~/.fonts
sudo fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d
cp ~/term-tools/vim/bundle/powerline/font/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
