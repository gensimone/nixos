{ pkgs, ... }:

{
  home.packages = with pkgs; [ nyaa ];

  xdg.configFile."nyaa/config.toml".source = ./config.toml;
}
