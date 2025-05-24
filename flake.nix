{
  description = "gensimone's Nix system configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = { self, nixpkgs, home-manager, spicetify-nix, nvf, ... }@inputs:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      latitude5400 = lib.nixosSystem {
        inherit system;
        modules = [
            ./system/machines/latitude5400
        ];
      };

      optiplex5050 = lib.nixosSystem {
        inherit system;
        modules = [
            ./system/machines/optiplex5050
        ];
      };
    };

    homeConfigurations = {
      latitude5400 = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs; };
        modules = [
          nvf.homeManagerModules.default
          spicetify-nix.homeManagerModules.spicetify
          ./home/machines/latitude5400
        ];
      };

      optiplex5050 = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs; };
        modules = [
          nvf.homeManagerModules.default
          spicetify-nix.homeManagerModules.spicetify
          ./home/machines/optiplex5050
        ];
      };
    };
  };
}
