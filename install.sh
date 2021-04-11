#!/bin/bash

read -p "Do you want to install Teleport Theme [Y/n]?" asr

case "$asr" in
    [yY][eE][sS]|[yY]|"")

    echo "Copying themes..."
    cp -Ri ./Teleport-theme-Dark-red $HOME/.local/share/plank/themes &&
    cp -Ri ./Teleport-theme-Light-Blue $HOME/.local/share/plank/themes &&
    cp -Ri ./Teleport-theme-Pink $HOME/.local/share/plank/themes

    echo "Done"

    ;;
*)
esac
 #----------End here-----------#

plank --preferences
