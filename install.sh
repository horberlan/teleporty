#!/bin/bash

read -p "Do you want to install Teleport Theme [Y/n]?" asr

case "$asr" in
    [yY][eE][sS]|[yY]|"")

    echo "Copying themes..."

    PLANKDIR="$HOME/.local/share/plank/themes"

    if [ -d $PLANKDIR ]; then
		cp -Ri ./Teleport-theme-Dark-red $PLANKDIR &&
		cp -Ri ./Teleport-theme-Light-Blue $PLANKDIR &&
		cp -Ri ./Teleport-theme-Pink $PLANKDIR
		echo "Done"
	else
		echo "Could not find $PLANKDIR"
		echo "Please ensure Plank Dock is installed"
		echo "For debian-based systems, install with 'sudo apt install plank'"
		exit 1
	fi
    

    ;;
*)
esac
 #----------End here-----------#

plank --preferences
