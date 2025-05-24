{ pkgs, ... }:

{
  home.packages = with pkgs; [ waypaper ];
  xdg.configFile."waypaper/config.ini".source = ./config.ini;
}
