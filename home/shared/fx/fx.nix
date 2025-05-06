{ pkgs, ... }:

{
  home.packages = with pkgs; [ felix-fm ];
  xdg.configFile."felix/config.yml".source = ./config.yml;
}
