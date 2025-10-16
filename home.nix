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
    ];

    programs.zsh = {
        enable = true;
        syntaxHighlighting.enable = true;

        # todo - history, zoxide, fzf, default shell

        shellAliases = {
            cls = "clear";
            nrsf = "sudo nixos-rebuild switch --flake .#nixos";
            ls = "ls --color";
            cd = "z";
        };

        initContent = ''
        export PS1='%~▶'
        '';
    };

    programs.zoxide = {
        enable = true;
        enableZshIntegration = true;
    };

    

}