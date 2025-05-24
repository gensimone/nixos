{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [ hyprlock ];
  xdg.configFile."hypr/hyprlock".source = ./hyprlock;
  xdg.configFile."hypr/hyprlock.conf".source = ./hyprlock.conf;
}
