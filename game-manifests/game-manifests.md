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
Steam ROM Manager will import URLs from Brawl, not Project+. But you can find the artworks on https://www.steamgriddb.com/game/5256720

This issue occurs unless you renamed your game base file and json title in smth like `Super Smash Bros Project+.iso`, in which case you'll have the problem the otherway around and here's the link to Brawl's artworks : https://www.steamgriddb.com/game/35465
### Melee (Slippi)
In Slippi Launcher's parameters, within the settings of the Dolphin emulator for online, you need to :
- Setup Melee as the default ISO of this emulator
- Auto launch the default ISO when the emulator is started
- Optional : set the game launching in full screen