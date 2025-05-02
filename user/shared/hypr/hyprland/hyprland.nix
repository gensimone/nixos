{ config, pkgs, ... }:

{
  # -> Install Hyprland at system level

  home.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1"; # If your cursor becomes invisible
    NIXOS_OZONE_WL = "1";          # Hint electron apps to use wayland
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    config.common.default = "*";
  };

  xdg.configFile."hypr/hyprland.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland/hyprland.conf;
  xdg.configFile."hypr/windowrules.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland/windowrules.conf;
  xdg.configFile."hypr/animations.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland/animations.conf;
  xdg.configFile."hypr/animations".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland/animations;
  xdg.configFile."hypr/keybindings.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland/keybindings.conf;
  xdg.configFile."hypr/theme.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland/theme.conf;
}
