#!/bin/bash

podman run -d \
    --name beszel-agent \
    --restart unless-stopped \
    --network host \
    --security-opt label=disable \
    -v /run/user/$(id -u)/podman/podman.sock:/var/run/docker.sock:ro \
    -v $(pwd)/data:/var/lib/beszel-agent/ \
    --device nvidia.com/gpu=all \
    -e NVIDIA_VISIBLE_DEVICES=all \
    -e NVIDIA_DRIVER_CAPABILITIES=utility,compute \
    -e LISTEN=45876 \
    -e KEY='' \
    -e TOKEN='' \
    -e HUB_URL='' \
    henrygd/beszel-agent-nvidia:latest