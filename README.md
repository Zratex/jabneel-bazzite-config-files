# Bazzite Config Files
Configuration files for my Bazzite(s) rigs.
The main objectif is that after doing R&D of tweeking this OS like I want on my gaming rig being the test subject, I don't have to redo this on my computer, and I could share my work.

> My main Bazzite rig utilize a Nvidia GPU (GTX 1060 6Gb), I might afterward update my scripts for AMD since my computer is on team red (RX 6800) which means my scripts should cover most people configs !

Even if I'm a dev, I'm sort of new in Linux-only Operating System, so if you've recommandation feel free to subject them or contact me.

-> I would not support handheld machines (unless you, reading this, offers me one...)
## Main softwares
My gaming experience mainly relies on :
- Steam Big Picture Mode
- Steam ROM Manager (Flatpak) (manual imports are done with game-manifests in .json file format)

Bazically, you need mainly need those 2 softwares.

The flatpaks I'm using that aren't really useful but gives me an extra touch to my experience because controling RGB depending on games is rly dope :
- OpenRGB
- TRCC (**If you don't have a ThermalRight cooler with a screen, you don't need it**. It's for monitoring my CPU Cooler : "ThermalRight Assassin X 120 R Digital ARGB Black". But since I'm only changing colors, my scripts could also works on each Thermalright coolers with panels)
### Launchers installed with Flatpak
List of softwares I installed with with Bazaar (Bazzite's Flatpak shop), so in Flatpak :
- Ryuging (fork of Ryujinx, which is a NS1 emulator)
- Cemu (WiiU emulator)
- Azahar (3DS emulator)
- melonDS (NDS emulator)
- OpenRGB (ARGB controller)

> This means that the **other softwares I use hasn't been installed in Flatpak**
## Environment paths
> You need to fill the environment paths, otherwise scripts won't work

Most of the scripts requires paths for specific files. But that means, depending on the config, this could probably not work. For this, **you don't need to edit each scripts but rather a single environment file** located in the root folder of this Github repository : `./global-var.env`
- Scripts will retrieve in this file the variables they need so they could properly process their tasks
- This file will mostly be empty once you download it, because it would be ignored by git through `.gitignore`. So you can make changes without having to fear git conflits after further upgrades
- If you're lost because this file is empty, `./global-var-sample.md` **is a sample example file to guide you through what you need to wright** in `./global-var.env` file
