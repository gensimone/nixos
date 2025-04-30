{ config, pkgs, ... }:

{
  xdg.configFile."waybar/config.jsonc".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/waybar/config.jsonc;
  xdg.configFile."waybar/style.css".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/waybar/style.css;
}
