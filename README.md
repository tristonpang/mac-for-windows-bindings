# Mac for Windows Bindings
> CREDITS TO: [TheBitStick](https://github.com/thebitstick/AutoHotKey) - I started from his script and modified it heavily to suit my needs as a dev + port the script over to AutoHotKey v2. Note that some of his original shortcuts were removed as I didn't need them
> Feel free to fork or download from this repo and modify it to your liking!

An AutoHotKey script that brings Mac shortcuts and bindings into Windows - for developers who are used to Mac shortcuts but are stuck on Windows dev environments.

## How to use
1. Make sure you have [AutoHotKey v2](https://www.autohotkey.com/) installed
2. Download or pull from the .ahk script from this repo
3. Launch the script and you are ready to go!

## General changes made from the original script (see credits for link)
* Removed a couple of application specific shortcuts because I didn't need them in order to make the script a bit cleaner
* Added more VSCode specific shortcuts
* Added some 60% keyboard layout bindings (no function row keys on those keyboards so I added a dedicated binding to access them)
* Replaced some Rectangle shortcuts (I use the shortcuts to move windows to different monitors + maximising the windows on those monitors)
* Removed the key mappings for singular press of Alt, Ctrl, Win keys -> Win key is also no longer disabled (so a single press of the Win key will still open the Start menu)
    * Win key + other key combinations will still work and not open the Start menu
