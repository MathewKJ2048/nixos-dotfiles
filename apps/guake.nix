# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/guake/general" = {
      compat-delete = "delete-sequence";
      display-n = 0;
      display-tab-names = 0;
      gtk-use-system-default-theme = true;
      hide-tabs-if-one-tab = true;
      history-size = 1000;
      load-guake-yml = true;
      max-tab-name-length = 100;
      mouse-display = true;
      open-tab-cwd = true;
      prompt-on-quit = true;
      quick-open-command-line = "gedit %(file_path)s";
      restore-tabs-notify = true;
      restore-tabs-startup = true;
      save-tabs-when-changed = true;
      schema-version = "3.10";
      scroll-keystroke = true;
      start-at-login = true;
      use-default-font = false;
      use-popup = false;
      use-scrollbar = true;
      use-trayicon = false;
      window-halignment = 0;
      window-height = 50;
      window-losefocus = false;
      window-refocus = false;
      window-tabbar = true;
      window-width = 100;
    };

    "org/guake/keybindings/global" = {
      show-hide = "<Primary>Tab";
    };

    "org/guake/keybindings/local" = {
      close-tab = "<Primary><Shift>z";
      close-terminal = "<Primary><Shift>greater";
      new-tab = "<Primary><Shift>asciitilde";
      rename-current-tab = "disabled";
      split-tab-horizontal = "<Primary><Shift>underscore";
      split-tab-vertical = "<Primary><Shift>bar";
      toggle-fullscreen = "<Primary>f";
    };

    "org/guake/style/background" = {
      transparency = 84;
    };

    "org/guake/style/font" = {
      allow-bold = true;
      palette = "#252529292A2A:#F2F248484040:#626296965555:#B6B688880000:#20207575C7C7:#79797F7FD4D4:#151596968D8D:#D2D2D8D8D9D9:#252529292A2A:#F2F248484040:#626296965555:#B6B688880000:#20207575C7C7:#79797F7FD4D4:#151596968D8D:#D2D2D8D8D9D9:#D2D2D8D8D9D9:#3D3D3F3F4141";
      palette-name = "Solarized Darcula";
      style = "Monospace 12";
    };

  };
}
