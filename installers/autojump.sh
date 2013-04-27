#!/bin/bash
set -e

# install autojump for both bash and zsh (if installed)
echo "Installing autojump into $HOME ..."
cd autojump
./install.sh > /dev/null
cd ..

TMP_AUTOJUMP_SH=~/.autojump-term-tools.tmp
for f in zsh bash; do
	SRC_AUTOJUMP_SH=~/.autojump/etc/profile.d/autojump.$f
	sed 's/^function j {$/function j_impl {/' < $SRC_AUTOJUMP_SH > $TMP_AUTOJUMP_SH
	mv -f $TMP_AUTOJUMP_SH $SRC_AUTOJUMP_SH
done
echo "Done"
