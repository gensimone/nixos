{ config, ... }:

{
  # xdg.configFile."xfce4".source = ./xfce4;
  xdg.configFile."xfce4".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/xfce/xfce4;
}
