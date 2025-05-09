{ config, pkgs, ... }:

{
  xdg.configFile."qutebrowser/config.py".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/qutebrowser/config.py;
}
