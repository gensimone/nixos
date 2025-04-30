{ config, pkgs, ... }:

{
  xdg.configFile."mako/config".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/mako/config;
}
