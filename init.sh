#!/bin/bash

sed "s|__HOME__|$HOME|g" ./game-manifests/template.slippi.json > ./game-manifests/slippi-manifest/melee.json

chmod +x load-env.sh game-manifests/*.sh beszel-agent/*sh