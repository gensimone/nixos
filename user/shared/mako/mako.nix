{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    mako                 # Lightweight Wayland notification daemon
  ];

  xdg.configFile."mako/config".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/mako/config;
}
