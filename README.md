# nixos-dotfiles
Dotfiles for my setups, using the nix configuration language

## General:

The main user is `mathew`. The password is not specified in the file. The hostname is `nixos`.

## Fresh install:

On a fresh install of nixos, do the following:

```
sudo nano /etc/nixos/configuration.nix
```

Edit the file to include git in the packages. The edits can be made in the user packages or the system packages. Rebuild the OS and check if git is installed:

```
sudo nixos-rebuild switch
git --version # to check if git is installed
```

At this point changing screen resolution is recommended. If the resolution is too small after the build, usage becomes unpleasant.

## To build:

On a fresh install of nixOS: (WARNING: the hardware configuration file is designed for a virtual environment)

After the fresh install, or on an existing install, navigate to the intended parent directory for the dotfiles directory, and run the following

```
git clone https://github.com/MathewKJ2048/nixos-dotfiles
cd ./nixos-dotfiles
cp -rf /etc/nixos/hardware-configuration.nix .    # substitute the hardware config with the one for your machine - the default hardware configuration is for a virtualbox VM
sudo nixos-rebuild switch --flake .#nixos   # this takes some time, the hostname comes after the hash
```

The rebuild command `sudo nixos-rebuild switch --flake .#nixos` is aliased to `nrsf` for future rebuilds, for convenience.

## To update:

Go to the directory where the flake.lock file is present. 

```
sudo nix flake update   # updates the flake.lock file to the latest
sudo nixos-rebuild switch --flake .#nixos       # syncs the system with the new flake.lock file
```

After multiple updates, if the disk space is being used up, run:

```
nix-garbage-collect
```




## General notes:

- if a file-not-found error occurs, ensure git add is performed - nrsf requires imported files to be part of the git tree

- The system preferred theme is in x.nix

- for virtual box, it's best to move to full-screen mode in the GRUB menu, and avoid switching modes while the desktop is running (including the login screen)

- A fresh install consumes around 12 GB in the hard drive. The recommended minimum hard drive space is 32 GB, 8GB RAM and 8 CPUs assigned to the VM

## Summary of shortcuts:

### General:

- ctrl+S : save
- ctrl+Z : undo
- ctrl+Y : redo
- ctrl+A : select all
- ctrl+X : cut
- ctrl+V : paste
- ctrl+C : copy

### VSCodium:

- ctrl+plus/minus - zoom in and out
- ctrl+` - toggle terminal
- ctrl+shift+p - command palette
- ctrl+p - file search
- ctrl+h - find and replace (can be done inside the selection by toggling a button)
- ctrl+f - local find
- ctrl+shift+f - global find
- ctrl+shift+e - back to explorer
- ctrl+k ctrl+t - switch color theme
- ctrl+/ - comment/uncomment lines
- ctrl+r - open folder
- ctrl+n - new file
- ctrl+shift+n - new window
- ctrl+b - toggle showing the files

### Guake:

- ctrl+tab - show/hide
- ctrl+f - toggle fullscreen
- ctrl+| - split vertical
- ctrl+- - split horizontal

### Cinnamon:

- ctrl+alt+del - stop everything
- alt+tab - switch tabs
- windows key - open menu

### Firefox:

- ctrl+n - new window
- ctrl+t - new tab
- ctrl+w - close current tab
- ctrl+k - focus on search bar
- ctrl+p - print
- ctrl+shift+I - inspector

### ZSH

- up/down - command history
- tab - autocomplete
- ctrl+shift+x/c/p - cut/copy/paste

