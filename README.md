# nixos-dotfiles
Dotfiles for my setups, using the nix configuration language

## General:

The main user is `mathew`. The password is not specified in the file. The hostname is `nixos`.

## To build:

On a fresh install of nixOS: (WARNING: the hardware configuration file is designed for a virtual environment)

```
git clone https://github.com/MathewKJ2048/nixos-dotfiles
cd ./nixos-dotfiles
sudo nixos-rebuild switch --flake .#nixos   # this takes some time, the hostname comes after the hash
```

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

## Summary of shortcuts:

### VSCodium:

- ctrl+plus/minus - zoom in and out
- ctrl+` - toggle terminal
- ctrl+shift+p - command palette
- ctrl+p - file search
- ctrl+h - find and replace (can be done inside the selection by toggling a button)
- ctrl+f - local find
- ctrl+shift+f - global find
- ctrl+k ctrl+t - switch color theme
- ctrl+/ - comment/uncomment lines

### Guake:

- ctrl+tab - show/hide
- ctrl+f - toggle fullscreen
- ctrl+| - split vertical
- ctrl+- - split horizontal
- 
