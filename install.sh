#!/bin/bash

read -p "Do you want to install Teleport Theme [Y/n]?" asr

case "$asr" in
    [yY][eE][sS]|[yY]|"")

    echo "Copying Dark and Light theme theme..."
    cp -Ri Teleport-theme-Dark-red $HOME/.local/share/plank/themes &&
    cp -Ri Teleport-theme-Light-Blue $HOME/.local/share/plank/themes
    echo "Done"

    ;;
*)
esac   

plank --preferences