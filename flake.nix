{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05"; # channel to draw from
  };

  
  outputs = { self, nixpkgs, ... }@inputs: # {x,y}@a means that I can access x via a.x
  
  {
    # the string "nixos" represents the hostname (which is distinct from the username)
    # nixosConfigurations is the attribute that nixos-rebuild looks for in a flake (other nix commands look for different things)
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
    modules = [ ./configuration.nix ]; # no need to import hardware-configurations as well because it's imported in configurations.nix already
   };

  };
}
