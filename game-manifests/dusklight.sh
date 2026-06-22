#!/usr/bin/env bash

source "$(dirname "$0")/../load-env.sh"

if [[ -z "${ABSOLUTE_PATH_TO_DUSKLIGHT_APP_IMAGE:-}" ]]; then
    echo "❌ ABSOLUTE_PATH_TO_DUSKLIGHT_APP_IMAGE not defined in global-var.env" >&2
    exit 1
fi

exec "${ABSOLUTE_PATH_TO_DUSKLIGHT_APP_IMAGE}"