{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi-wayland # Window switcher, run dialog and dmenu replacement for Wayland
  ];

  xdg.configFile."rofi/config.rasi".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/rofi/config.rasi;
  xdg.configFile."rofi/nord.rasi".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/rofi/nord.rasi;
}
