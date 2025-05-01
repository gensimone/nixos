{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch # An actively maintained, feature-rich and performance oriented, neofetch like system information tool
  ];

  xdg.configFile."fastfetch/config.jsonc".source = ./config.jsonc;
  xdg.configFile."fastfetch/logo.png".source = ./logo.png;
}
