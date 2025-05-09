{ config, pkgs, ... }:

{
  xdg.configFile."kitty/kitty.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/kitty/kitty.conf;
}
