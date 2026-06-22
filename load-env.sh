#!/usr/bin/env bash
# Utilitaire : charge dans le script bash courant les variables stockées dans ./global-var.env
# Usage : source "$(dirname "$0")/../load-env.sh"

_ENV_FILE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/global-var.env"

if [[ ! -f "$_ENV_FILE" ]]; then
    echo "❌ global-var.env introuvable : $_ENV_FILE" >&2
    exit 1
fi

set -a
while IFS='=' read -r key value; do
    # Ignorer lignes vides et commentaires
    [[ -z "$key" || "$key" =~ ^[[:space:]]*# ]] && continue
    # Ignorer les valeurs vides ou non renseignées (commencent par #)
    [[ -z "$value" || "$value" =~ ^# ]] && continue
    # Supprimer les guillemets simples/doubles éventuels
    value="${value%\'}" ; value="${value#\'}"
    value="${value%\"}" ; value="${value#\"}"
    export "$key=$value"
done < "$_ENV_FILE"
set +a