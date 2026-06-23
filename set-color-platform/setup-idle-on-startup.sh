# === This script should in theory be executed only once on your rig ===
# Automatic restart of OpenRGB (otherwise commands won't work properly) :
mkdir -p ~/.config/autostart

cat > ~/.config/autostart/openrgb.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=OpenRGB
Exec=openrgb --startminimized --server
StartupNotify=false
EOF

# Automatic restart of waking idle mode :

cat > ~/.config/autostart/openrgb-idle.dekstop << 'EOF'
[Desktop Entry]
Type=Application
Name=OpenRGB Startup Set Idle
Exec=bash -c '~/jabneel-bazzite-config-files/set-color-platform/waking-idle-mode.sh'
StartupNotify=false
EOF