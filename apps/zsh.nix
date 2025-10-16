{
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
}