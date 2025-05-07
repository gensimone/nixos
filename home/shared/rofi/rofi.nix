{ pkgs, ... }:

{
  home.packages = with pkgs; [ rofi-wayland ];

  xdg.configFile."rofi/wallset.rasi".source = ./wallset.rasi;
  xdg.configFile."rofi/config.rasi".source = ./config.rasi;
  xdg.configFile."rofi/colors.rasi".source = ./colors.rasi;
  xdg.configFile."rofi/fonts.rasi".source = ./fonts.rasi;
  xdg.configFile."rofi/scripts".source = ./scripts;
}
