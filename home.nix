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

        initExtra = ''
        export PS1='\W▶'
        '';
    };

    home.packages = with pkgs; [
        sl
        guake
        vlc
    ];

    # programs.guake.enable = true;
    services.guake.enable = true;
}