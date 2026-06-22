#!/bin/bash

ROM="$1"

~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh ns1

flatpak run io.github.ryubing.Ryujinx --fullscreen "$ROM"

~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh idle