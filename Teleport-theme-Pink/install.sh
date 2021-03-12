#!/bin/bash

read -p "Do you want to install Teleport Theme [Y/n]?" asr

case "$asr" in
    [yY][eE][sS]|[yY]|"")

    echo "Copying Dark theme theme..."
    cp -Ri Teleport-theme-Pink $HOME/.local/share/plank/themes
    echo "Done"

    ;;
*)
esac

plank --preferences
