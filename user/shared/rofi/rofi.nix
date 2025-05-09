{ config, pkgs, ... }:

{
  xdg.configFile."rofi/config.rasi".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/rofi/config.rasi;
  xdg.configFile."rofi/nord.rasi".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/rofi/nord.rasi;
}
