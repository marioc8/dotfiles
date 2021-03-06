#!/bin/bash

config_files=(
	".config/nvim/*.vimrc"	# add all files ending with vimrc from this directory
	".config/nvim/init.vim"
	".config/rofi/"
	".local/bin/godot"
	".local/bin/mounting.sh"
	".local/bin/poweroff.sh"
	".local/bin/togglesinks.sh"
	".tmux.conf"
	".xinitrc"
	"summary.sh"
  ".bash_aliases"
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

