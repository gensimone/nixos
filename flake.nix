{
  description = "nix flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";
  };

  outputs = { self, nixpkgs, home-manager, stylix, ... }:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      latitude5400 = lib.nixosSystem {
        inherit system;
        modules = [
          stylix.nixosModules.stylix
            ./system/machines/latitude5400/configuration.nix
        ];
      };
      optiplex5050 = lib.nixosSystem {
        inherit system;
        modules = [
          stylix.nixosModules.stylix
            ./system/machines/optiplex5050/configuration.nix
        ];
      };
    };
    homeConfigurations = {
      xfce = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
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
