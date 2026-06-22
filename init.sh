#!/bin/bash

sed "s|__HOME__|$HOME|g" /game-manifest/template.melee.json > /game-manifest/melee.json

chmod +x load-env.sh game-manifests/*.sh beszel-agent/*sh