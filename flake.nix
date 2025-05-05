{
  description = "nix flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs = { self, nixpkgs, home-manager, spicetify-nix, ... }:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      latitude5400 = lib.nixosSystem {
        inherit system;
        modules = [
            ./system/machines/latitude5400/configuration.nix
        ];
      };
      optiplex5050 = lib.nixosSystem {
        inherit system;
        modules = [
            ./system/machines/optiplex5050/configuration.nix
        ];
      };
    };
    homeConfigurations = {
      xfce = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          spicetify-nix.homeManagerModules.spicetify
          ./user/xfce.nix
        ];
      };
      hyprland = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./user/hyprland.nix
        ];
      };
    };
  };
}
