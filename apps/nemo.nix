# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/nemo/desktop" = {
      font = "Monospace 8";
    };

    "org/nemo/preferences" = {
      confirm-move-to-trash = false;
      enable-delete = false;
      executable-text-activation = "launch";
      quick-renames-with-pause-in-between = true;
      show-edit-icon-toolbar = false;
    };

    "org/nemo/preferences/menu-config" = {
      selection-menu-duplicate = true;
      selection-menu-favorite = false;
      selection-menu-make-link = true;
      selection-menu-pin = false;
    };

    "org/nemo/window-state" = {
      geometry = "720x540+279+62";
      maximized = false;
      sidebar-bookmark-breakpoint = 0;
      start-with-sidebar = true;
    };

  };
}
