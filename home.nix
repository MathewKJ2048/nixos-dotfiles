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

    programs.zsh = {
        enable = true;
        syntaxHighlighting.enable = true;

        history.size = 10000; 
        history.save = 10000;

        shellAliases = {
            cls = "clear";
            nrsf = "sudo nixos-rebuild switch --flake .#nixos";
            ls = "ls --color";
            cd = "z";
            code = "codium";
        };

        initContent = ''
        export PS1='%~▶'
        '';
    };

    programs.zoxide = {
        enable = true;
        enableZshIntegration = true;
    };

    programs.git = {
        enable = true;
        userName = "Mathew Kuthur James";
        userEmail = "mathewkj2048@gmail.com";
    };

    programs.vscode = {
        enable = true;
        package = pkgs.vscodium;
        profiles.default.userSettings = {
            "files.autoSave" = "afterDelay";
            "editor.fontSize" = 16;
            "editor.wordWrap" = "on";
            "editor.confirmDragandDrop" = false;
            "editor.confirmDelete" = false;

            # 
            "workbench.layoutControl.enabled" = false;
        };       
    };

    

}