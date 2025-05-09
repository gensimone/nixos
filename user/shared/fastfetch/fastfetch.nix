{ config, pkgs, ... }:

{
  xdg.configFile."fastfetch/config.jsonc".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/fastfetch/config.jsonc;
}
