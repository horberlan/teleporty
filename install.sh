#!/bin/bash

read -p "Do you want to install Teleport Theme [Y/n]?" answer
echo "Answer: $answer"

case "$answer" in
    [yY][eE][sS]|[yY]|"")
        echo "Copying themes..."

        PLANKDIR="$HOME/.local/share/plank/themes"
        echo "Plank Directory: $PLANKDIR"

        if [ -d "$PLANKDIR" ]; then
            echo "Plank directory found"
            cp -Ri ./Teleport-theme-Dark-red "$PLANKDIR" &&
            echo "Dark-red theme copied"
            cp -Ri ./Teleport-theme-Light-Blue "$PLANKDIR" &&
            echo "Light-Blue theme copied"
            cp -Ri ./Teleport-theme-Pink "$PLANKDIR"
            echo "Pink theme copied"
            echo "Done"
        else
            echo "Could not find $PLANKDIR"
            echo "Please ensure Plank Dock is installed. see: https://github.com/ricotz/plank"
            echo "For debian-based systems, install with 'sudo apt install plank'"
            exit 1
        fi
    ;;
    *)
    ;;
esac

if command -v plank >/dev/null 2>&1; then
    echo "Plank Dock is installed, select teleporty theme in plank preferences"
    plank --preferences
else
    echo "Plank Dock is not installed"
    echo "Please install Plank Dock and try again"
    echo "For debian-based systems, install with 'sudo apt install plank'"
    exit 1
fi