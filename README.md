# Bazzite Config Files
Configuration files for my Bazzite(s) rigs.
The main objectif is that after doing R&D of tweeking this OS like I want on my gaming rig being the test subject, I don't have to redo this on my computer, and I could share my work.

> My main Bazzite rig utilize a Nvidia GPU, I might afterward update my scripts for AMD since my computer

Even if I'm a dev, I'm sort of new in Linux-only, so if you've recommandation feel free to subject them of contact me.
## Main softwares
My gaming experience mainly relies on :
- Steam Big Picture Mode
- Steam ROM Manager (manual imports are done with game-manifests in .json file format)

The softwares I'm using that aren't really useful but gives me an extra touch to my experience because controling RGB depending on games is rly dope :
- OpenRGB
- TRCC (for monitoring my CPU Cooler : "ThermalRight Assassin X 120 R Digital ARGB Black". But since I'm only changing colors, my scripts could also works on each Thermalright coolers with panels)
## Environment paths
> You need to fill the environment paths, otherwise scripts won't work
Most of the scripts requires paths for specific files. But that means that depending on the config this could prob not work. For this, you don't need to edit each scripts but rather a single environment file located in the root folder of this Github repository : `./global-var.env`
- Scripts will retrieve in this file the variables they need so they could properly process their tasks
- This file will mostly be empty once you download it, because it would be ignored by git through `.gitignore`. So you can make changes without having to fear git conflits after further upgrades
- If you're lost because this file is empty, `./global-var.env.dev` **is a sample example file to guide you through what you need to wright** in `./global-var.env` file
