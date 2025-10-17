{config, pkgs, ...}:
{
    home.username = "mathew";
    home.homeDirectory = "/home/mathew";

    home.stateVersion = "25.05";

    home.packages = with pkgs; [
        sl
        guake
        vlc
        vscodium
        fzf
        zoxide
        dconf2nix
        # flameshot
    ];

    imports = [
        ./apps/firefox.nix
        ./apps/vscodium.nix
        ./apps/git.nix
        ./apps/zoxide.nix
        ./apps/zsh.nix
        ./apps/guake.nix
        ./apps/nemo.nix
    ];

    systemd.user.services.drop-down-terminal = {
        Unit = {
            Description = "automatically start drop-down terminal guake";
            After = ["graphical-session.target"]; # wait for cinnamon to load first
            Requires = ["graphical-session.target"]; # dependency: if the desktop stops, so does guake
        };
        Install.WantedBy = ["graphical-session.target"];
        Service = {
            Type = "simple"; # most common type
            ExecStart = "${pkgs.guake}/bin/guake"; # a simple command won't work because the shell is loaded after systemd
        };
    };

}