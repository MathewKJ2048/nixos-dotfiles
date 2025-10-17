{ config, pkgs, ... }: 
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium; # different package - though the options say code, it manages codium
    profiles.default.userSettings = {

        "files.autoSave" = "afterDelay"; # this is the option for instant autosave

        "editor.fontSize" = 16;
        "editor.wordWrap" = "on";
        "window.zoomLevel" = -1; # sets a comfortable default zoom

        # prevents pop-ups for delete and move
        "editor.confirmDragandDrop" = false;
        "editor.confirmDelete" = false;

        # cleans up UI
        "workbench.layoutControl.enabled" = false;

        # sticky scroll
        "editor.stickyScroll.enabled" = false;
        "workbench.tree.enableStickyScroll" = false;
        "terminal.integrated.stickyScroll.enabled" = false;
    };       
  };
}