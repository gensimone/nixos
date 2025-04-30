{ config, pkgs, ... }:

{
  xdg.configFile."hypr/hyprland.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland.conf;
  xdg.configFile."hypr/windowrules.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/windowrules.conf;
  xdg.configFile."hypr/animations.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/animations.conf;
  xdg.configFile."hypr/animations".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/animations;
  xdg.configFile."hypr/keybindings.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/keybindings.conf;
  xdg.configFile."hypr/theme.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/theme.conf;
  xdg.configFile."hypr/hyprlock.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprlock.conf;
  xdg.configFile."hypr/hypridle.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hypridle.conf;
  xdg.configFile."hypr/scripts".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/scripts;
}
