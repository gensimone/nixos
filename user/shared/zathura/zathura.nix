{ config, pkgs, ... }:

{
  xdg.configFile."zathura/zathurarc".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/zathura/zathurarc;
}
