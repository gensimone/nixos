{ pkgs, ... }:

{
  home.packages = with pkgs; [ wleave ];

  xdg.configFile."wleave/layout".source = ./layout;
  xdg.configFile."wleave/style.css".source = ./style.css;
  xdg.configFile."wleave/icons".source = ./icons;
}
