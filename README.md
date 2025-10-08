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
nix flake update   # updates the flake.lock file to the latest
sudo nixos-rebuild switch --flake .#nixos       # syncs the system with the new flake.lock file
```