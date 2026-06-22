#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FILE="${SCRIPT_DIR}/colors.json"

MODE="${1:-idle}"

# Vérifie que jq est installé
if ! command -v jq >/dev/null 2>&1; then
    echo "Erreur : jq n'est pas installé."
    exit 1
fi

# Récupère la couleur associée au mode demandé
COLOR=$(jq -r --arg mode "$MODE" '
    if has($mode) then .[$mode]
    else .idle
    end
' "$CONFIG_FILE")

# Supprime le # éventuel
COLOR="${COLOR#\#}"

echo "Mode : $MODE"
echo "Couleur : #$COLOR"

openrgb --mode static --color "$COLOR"