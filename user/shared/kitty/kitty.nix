{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty             # Modern, hackable, featureful, OpenGL based terminal emulator
  ];

  xdg.configFile."kitty/kitty.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/kitty/kitty.conf;
}
