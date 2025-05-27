{ ... }:

{
  imports = [
    ./browser
    ./games
    ./hypr
    ./kitty
    ./music
    ./nyaa
    ./programs
    ./python
    ./shell
    ./spicetify
    ./theme
    ./wallpapers
    ./waypaper
    ./xdg
    ./zathura
  ];

  nixpkgs.config.allowUnfree = true;

  home = {
    username = "simone";
    homeDirectory = "/home/simone";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
