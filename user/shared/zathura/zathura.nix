{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    zathura # Highly customizable and functional PDF viewer
  ];

  xdg.configFile."zathura/zathurarc".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/zathura/zathurarc;
}
