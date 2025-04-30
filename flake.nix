{
  description = "nix flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager,... }:

    let

      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

    in {

      nixosConfigurations = {

        latitude5400 = lib.nixosSystem {
          inherit system;
          modules = [ ./system/latitude5400/configuration.nix ];
        };

        optiplex5050 = lib.nixosSystem {
          inherit system;
          modules = [ ./system/optiplex5050/configuration.nix ];
        };

      };

      homeConfigurations = {

        latitude5400 = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./user/latitude5400/home.nix ];
        };

        optiplex5050 = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./user/optiplex5050/home.nix ];
        };

      };

    };

}
