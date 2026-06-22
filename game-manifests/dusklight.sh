#!/usr/bin/env bash

source "$(dirname "$0")/../load-env.sh"

if [[ -z "${ABSOLUTE_PATH_TO_DUSKLIGHT_APP_IMAGE:-}" ]]; then
    echo "❌ ABSOLUTE_PATH_TO_DUSKLIGHT_APP_IMAGE not defined in global-var.env" >&2
    exit 1
fi

~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh gc

exec "${ABSOLUTE_PATH_TO_DUSKLIGHT_APP_IMAGE}"

~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh idle