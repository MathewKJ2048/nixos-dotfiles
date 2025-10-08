{config, pkgs, ...}:
{
    home.username = "mathew";
    home.homeDirectory = "/home/mathew";

    home.stateVersion = "25.05";

    programs.bash = {
        enable = true;
        shellAliases = {
            hello = "echo hello";
            cls = "clear";
        };
    };
}