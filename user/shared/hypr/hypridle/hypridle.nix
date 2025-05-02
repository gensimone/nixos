{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    hypridle # Hyprland's idle daemon
  ];

  xdg.configFile."hypr/hypridle.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hypridle/hypridle.conf;
}
