#!/bin/bash

GAME_PATH="$1"

TITLE_ID=$(basegame "$GAME_PATH" | grep -oP '\[[0-9A-Fa-f]{16}\]' | tr -d '[]')

flatpak run info.cemu.Cemu -f -t "$TITLE_ID"