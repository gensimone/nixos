{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors
  ];

  xdg.configFile."waybar/config.jsonc".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/waybar/config.jsonc;
  xdg.configFile."waybar/style.css".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/waybar/style.css;
}
