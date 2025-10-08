# nixos-dotfiles
Dotfiles for my setups, using the nix configuration language

## General:

The main user is `mathew`. The password is not specified in the file. The hostname is `nixos`.

## To build:

On a fresh install of nixOS:

```
git clone https://github.com/MathewKJ2048/nixos-dotfiles
cd ./nixos-dotfiles
cp /etc/nixos/hardware-configuration
sudo nixos-rebuild switch -I nixos-config=./configuration.nix
```