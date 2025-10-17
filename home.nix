{config, pkgs, ...}:
{
    home.username = "mathew";
    home.homeDirectory = "/home/mathew";

    home.stateVersion = "25.05";

    home.packages = with pkgs; [
        
        guake # drop-down terminal
        vscodium # code editing
        vlc # music and video
        # flameshot screenshots
        
        dconf2nix # tool used to configure dconf dumps, move it to a shell maybe?
        
        # shell quality of life
        zoxide # better cd
        fzf # fuzzy-finding
        ripgrep # not aliased because it's not a drop-in replacement for grep, but it's much faster

        # purely for aesthetics
        btop # monitor performance
        cava # audio
        fastfetch # system information
        sl # steam locomotive
        cbonsai # grow bonsai on the terminal
        cowsay # make an ascii cow say things
        cmatrix # make the terminal resemble The Matrix
    ];

    imports = [
        ./apps/firefox.nix
        ./apps/vscodium.nix
        ./apps/git.nix
        ./apps/zoxide.nix
        ./apps/zsh.nix
        ./apps/guake.nix
        ./apps/nemo.nix
        ./apps/cinnamon.nix
        ./apps/gnome_desktop_interface.nix
        ./apps/x.nix
    ];

    
    systemd.user.services.drop-down-terminal = 
    let
        target = "graphical-session.target";
    in
    {
        Unit = {
            Description = "automatically start drop-down terminal guake";
            After = [target]; # wait for cinnamon to load first
            Requires = [target]; # dependency: if the desktop stops, so does guake
        };
        Install.WantedBy = [target];
        Service = {
            Type = "simple"; # most common type
            ExecStart = "${pkgs.guake}/bin/guake --hide"; # a simple command won't work because the shell is loaded after systemd, --hide is used to prevent opening it, and also introduces a slight delay so that it doesn't open before x and cinnamon are fully loaded
        };
    };

}