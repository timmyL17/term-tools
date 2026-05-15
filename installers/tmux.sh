#!/bin/bash
set -e

if command -v tmux >/dev/null 2>&1; then
	echo "tmux: exists"
elif command -v apt-get >/dev/null 2>&1; then
	# ubuntu
	sudo apt-get install -y tmux xclip
elif command -v brew >/dev/null 2>&1; then
	# homebrew
	brew install tmux
else
	echo "ERROR: tmux is not installed"
	exit 1
fi

ln $@ -sn ~/term-tools/config/tmux.conf ~/.tmux.conf
