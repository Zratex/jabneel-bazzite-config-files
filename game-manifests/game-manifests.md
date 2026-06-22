# Game-Manifests
Files within this folder (`./game-manifests/`) are made to be imported to Steam through Steam ROM Manager, so Steam can directly launcher those specific games.

- [How to import manifests into Steam ROM Manager](#how-to-import-manifests-into-steam-rom-manager)
- [Notes regarding specific launchers](#notes-regarding-specific-launchers) :
  - [Project+](#project)
  - [Melee (Slippi)](#melee-slippi)
## How to import manifests into Steam ROM Manager
When you create a new parser, select associated folder name in `./game-manifests/` with the launcher you want to link in.

Example : if you want to import Slippi, select `./game-manifests/slippi/` folder 

> Don't forget to fill up environment, otherwise I would not work
## Notes regarding specific launchers
### Project+
> Requierement : Project+ (AppImage) should be installed, with Brawl ISO

Steam ROM Manager will import URLs from Brawl, not Project+. But you can find the artworks on https://www.steamgriddb.com/game/5256720

This issue occurs unless you renamed your game base file and title within the script in smth like `Super Smash Bros Project+.iso`, in which case you'll have the problem the otherway around and here's the link to Brawl's artworks : https://www.steamgriddb.com/game/35465
### Melee (Slippi)
> Requierement : Slippi (AppImage) should be installed, with Melee ISO
> After Slippi installed, you should execute `./init.sh` file which will generate `./game-manifest/slippi-manifest/melee.json`

In Slippi Launcher's parameters, within the settings of the Dolphin emulator for online, you need to :
- Setup Melee as the default ISO of this emulator
- Auto launch the default ISO when the emulator is started
- Optional : set the game launching in full screen

Once done, create a new Parser in Type "Manuel" where the Manifest Directory points toward the file `./game-manifest/slippi-manifest/melee.json`
### Cemu
> Requierement : Cemu (Flatpak) should be installed

Folders containing Base Games of your games should be named in this way :
- full name of the game, followed by
- the ID of the game

-> otherwise Cemu will execute without knowing which game it had to launch (that's why the script exists, because there's plenty of different format for WiiU ROMs)

Here's an example (pay attention to the name of the last folder) : `/ssd-games/WiiU/base-game/The Legend of Zelda Breath of the Wild [00050000101C9500]/`
### Dusklight
> Requierement : Dusklight (AppImage) should be installed, with Twilight Princess ISO