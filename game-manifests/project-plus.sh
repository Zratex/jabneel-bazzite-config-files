#!/usr/bin/env bash

source "$(dirname "$0")/../load-env.sh"

if [[ -z "${ABSOLUTE_PATH_TO_PROJECT_PLUS_FOLDER:-}" ]]; then
    echo "❌ ABSOLUTE_PATH_TO_PROJECT_PLUS_FOLDER not defined global-var.env" >&2
    exit 1
fi

GAME_PATH="$1"

exec "${ABSOLUTE_PATH_TO_PROJECT_PLUS_FOLDER}/Project-Plus-Dolphin.AppImage" \
    --exec "${ABSOLUTE_PATH_TO_PROJECT_PLUS_FOLDER}/Project-Plus-Dolphin.AppImage.home/.local/share/project-plus-dolphin/Launcher/Project+ Offline Launcher.dol"