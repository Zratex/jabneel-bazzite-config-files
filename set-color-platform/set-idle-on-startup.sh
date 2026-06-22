# Launcement automatique du script set-rgb au démarrage :
mkdir -p ~/.config/autostart

cat > ~/.config/autostart/openrgb.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=OpenRGB
Exec=openrgb --startminimized
StartupNotify=false
EOF

cat > ~/.config/autostart/openrgb-idle.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=OpenRGB Startup Set Idle
Exec=bath -c 'sleep 6 && ~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh idle'
StartupNotify=false
EOF