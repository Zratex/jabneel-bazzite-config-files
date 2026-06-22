# Bazzite Config Files
Configuration files for my Bazzite(s) rigs.
The main objectif is that after doing R&D of tweeking this OS like I want on my gaming rig being the test subject, I don't have to redo this on my computer, and I could share my work.

- [Supported Platforms](#supported-platforms)
- [Main softwares Required](#main-softwares-required)
  - [Launchers installed with Flatpak](#launchers-installed-with-flatpak)
- [Environment paths configuration](#environment-paths-configuration)
- [Specific Game Manifests configuration](#specific-game-manifests-configuration)
- [Beszel-agent](/beszel-agent/beszel-agent.md)

Even if I'm a dev, I'm sort of new in Linux-only Operating System, so if you've recommandations/feedback feel free to subject them or contact me !!
## Supported platforms
Here's a list of every section of this repo and the platform supported :

| Platforms | Game Manifests | LEDs by games types | Beszel-agent |
| :-: | :-: | :-: | :-: |
| Nvidia GPU | ✅ | ✅ | ✅ |
| AMD GPU | ✅ | ✅ | ❌, but planned to be supported |
| iGPU (some Laptops + Handheld machines) | ✅ | not sure | ❌ |
| ARM based CPU | not sure | not sure | ❌ |

I can support every of those platformes if you, reading this, provide me a machine with this specification and pay me the time I'll spend on it...

Likewise **if your want to make dedicated contributions** for those platforms, **I need the related hardware** to test it and merge it to the main branch of this project.
## Main softwares required
My gaming experience mainly relies on :
- Steam Big Picture Mode
- Steam ROM Manager (Flatpak) (glob imports are done with game-manifests in `.sh` file format)

Basically, you need mainly need those 2 softwares. The other listed softwares are needed depending on your needs tbh (ex: for the Slippi, you need Slippi installed).

The flatpaks I'm using that aren't really useful but gives me an extra touch to my experience because controling RGB depending on games is rly dope :
- OpenRGB
- TRCC (**If you don't have a ThermalRight cooler with a screen, you don't need it**. It's for monitoring my CPU Cooler : "ThermalRight Assassin X 120 R Digital ARGB Black". But since I'm only changing colors, my scripts could also works on each Thermalright coolers with panels)
### Launchers installed with Flatpak
List of (not necessarly required) softwares I installed with with Bazaar (Bazzite's Flatpak shop), so in Flatpak :
- Ryuging (fork of Ryujinx, which is a NS1 emulator)
- Cemu (WiiU emulator)
- Azahar (3DS emulator)
- melonDS (NDS emulator)
- OpenRGB (ARGB controller)

> This means that the **other softwares I use throughout this repo hasn't been installed in Flatpak**
## Environment paths configuration
> You need to fill the environment paths, otherwise scripts won't work

> You might also need to execute once this command at the base of this repo `chmod +x load-env.sh game-manifests/*.sh beszel-agent/*sh`, otherwise the system will probably not allow to execute those files

Most of the scripts requires paths for specific files. But that means, depending on the config, this could probably not work. For this, **you don't need to edit each scripts but rather a single environment file** located in the root folder of this Github repository : `./global-var.env`
- Scripts will retrieve in this file the variables they need so they could properly process their tasks
- This file will mostly be empty once you download it, because it would be ignored by git since I executed `git update-index --skip-worktree global-var.env` in this repo. So you can make changes without having to fear git conflits after further upgrades
- If you're lost because this file is empty, the file [./global-var-sample.md](./global-var-sample.md) **is a sample example file to guide you through what you need to wright** in `./global-var.env` file
## Specific Game Manifests configuration
You should read [/game-manifests/game-manifests.md](/game-manifests/game-manifests.md) for further informations, because some launchers need specific configurations to be properly launched and properly imported in Steam ROM Manager.