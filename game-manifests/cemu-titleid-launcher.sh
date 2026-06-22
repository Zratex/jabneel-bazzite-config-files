#!/bin/bash

GAME_PATH="$1"

TITLE_ID=$(basegame "$GAME_PATH" | grep -oP '\[[0-9A-Fa-f]{16}\]' | tr -d '[]')

~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh wiiu

flatpak run info.cemu.Cemu -f -t "$TITLE_ID"

~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh idle