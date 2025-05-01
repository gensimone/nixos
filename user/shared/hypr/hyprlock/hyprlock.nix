{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprlock # Hyprland's GPU-accelerated screen locking utility
  ];

  xdg.configFile."hypr/hyprlock.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprlock/hyprlock.conf;
}
