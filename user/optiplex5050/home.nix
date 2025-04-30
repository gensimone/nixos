{ config, pkgs, lib, ... }:


{
  imports = [
    ../shared/fastfetch/fastfetch.nix
    ../shared/git.nix
    ../shared/hypr/hypr.nix
    ../shared/kitty/kitty.nix
    ../shared/mako/mako.nix
    ../shared/nvim/nvim.nix
    ../shared/qutebrowser/qutebrowser.nix
    ../shared/rofi/rofi.nix
    ../shared/theme.nix
    ../shared/tmux/tmux.nix
    ../shared/waybar/waybar.nix
    ../shared/zathura/zathura.nix
    ../shared/zsh/zsh.nix
  ];

  home.username = "simone";
  home.homeDirectory = "/home/simone";
  home.packages = [];
  home.file = {};
  home.sessionVariables = {};
  home.shellAliases = {
    sys-rebuild="nixos-rebuild switch --flake ~/.config/nixos#optiplex5050 --use-remote-sudo";
    home-rebuild="home-manager switch --flake ~/.config/nixos#optiplex5050";
  };

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
