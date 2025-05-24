{ pkgs, ... }:

{
  home.packages = with pkgs; [ qutebrowser python312Packages.adblock ];
  xdg.configFile."qutebrowser/config.py".source = ./config.py;
  xdg.configFile."qutebrowser/gruvbox-dark.css".source = ./gruvbox-dark.css;
}
