# nixos-dotfiles
Dotfiles for my setups, using the nix configuration language

## General:

The main user is `mathew`. The password is not specified in the file. The hostname is `nixos`.

## To build:

```
git clone https://github.com/MathewKJ2048/nixos-dotfiles
cd ./nixos-dotfiles
sudo nixos-rebuild switch -I nixos-config=./configuration.nix
```