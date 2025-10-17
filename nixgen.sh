
dconf2nix -i ./dconf_dumps/nemo.dconf -o ./apps/nemo.nix --root /org/nemo

dconf2nix -i ./dconf_dumps/cinnamon.dconf -o ./apps/cinnamon.nix --root /org/cinnamon

dconf2nix -i ./dconf_dumps/gtk.dconf -o ./apps/gtk.nix --root /org/gtk

dconf2nix -i ./dconf_dumps/x.dconf -o ./apps/x.nix --root /org/x


dconf2nix -i ./dconf_dumps/guake.dconf -o ./apps/guake.nix --root /org/guake