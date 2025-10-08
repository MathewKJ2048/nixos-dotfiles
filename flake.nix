{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05"; # channel to draw from
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  
  outputs = { self, nixpkgs, home-manager, ... }@inputs: # {x,y}@a means that I can access x via a.x
  
  {
    # the string "nixos" represents the hostname (which is distinct from the username)
    # nixosConfigurations is the attribute that nixos-rebuild looks for in a flake (other nix commands look for different things)
    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
    modules = [ 
      ./configuration.nix # no need to import hardware-configurations as well because it's imported in configurations.nix already
      home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          backupFileExtension = "backup"; # required to allow home-manger to overwrite existing configs and put the old version in backup
          users.mathew = import ./home.nix;
        };
      }
    ]; 
   };

  };
}
