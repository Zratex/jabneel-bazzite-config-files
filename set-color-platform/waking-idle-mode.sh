sleep 6 # Waiting so OpenRGB could first launch beforehand
# Taking control of each devices by first changing the mode :
for i in $(openrgb --list-devices | grep -oP '^\d+(?=:)'); do
    openrgb --device $i --mode breathing
done
# Then reapplying static color by cutting color before hitting the idle mode
for i in $(openrgb --list-devices | grep -oP '^\d+(?=:)'); do
    openrgb --device $i --mode static --color 000000
done
# Changing to the idle color defined by user :
~/jabneel-bazzite-config-files/set-color-platform/set-rgb.sh idle
