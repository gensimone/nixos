{ ... }:

{
  imports = [
    ./shared/browser/browser.nix
    ./shared/cmus.nix
    ./shared/hypr/hypr.nix
    ./shared/kitty/kitty.nix
    ./shared/programs.nix
    ./shared/python/python.nix
    ./shared/shell.nix
    ./shared/spicetify.nix
    ./shared/theme.nix
    ./shared/wallpapers/wallpapers.nix
    ./shared/waypaper/waypaper.nix
    ./shared/xdg/xdg.nix
    ./shared/zathura.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "simone";
  home.homeDirectory = "/home/simone";

  home.shellAliases = {
    home-rebuild = "home-manager switch --flake ~/sources/personal/nixos#hyprland";
  };

  home.packages = [];
  home.file = {};
  home.sessionVariables = {};

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
