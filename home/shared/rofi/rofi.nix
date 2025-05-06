{ pkgs, ... }:

{
  home.packages = with pkgs; [ rofi-wayland ];
  xdg.configFile."rofi/config.rasi".source = ./config.rasi;
  xdg.configFile."rofi/nord.rasi".source = ./nord.rasi;
  xdg.configFile."rofi/scripts".source = ./scripts;
}
