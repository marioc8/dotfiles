#!/bin/bash

config_files=(
	".config/nvim/init.vim"
	".config/nvim/*.vimrc"
	".tmux.conf"
	".config/rofi/"
	".local/bin/togglesinks.sh"
	".local/bin/poweroff.sh"
	".local/bin/mounting.sh"
	)

# first remove old backup
#echo "Deleting old backup"
#rm -rf homedir/

echo "Making fresh backup"
# now copy fresh version of files
for name in ${config_files[*]}
do
	rsync -rRi $HOME/./$name homedir/
done


echo "Done."

