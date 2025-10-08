{config, pkgs, ...}:
{
    home.username = "mathew";
    home.homeDirectory = "/home/mathew";

    home.stateVersion = "25.05";

    programs.bash = {
        enable = true;
        shellAliases = {
            cls = "clear";
            nrsf = "sudo nixos-rebuild switch --flake .#nixos";
        };
    };

    home.packages = with pkgs; [
        sl
    ];
}