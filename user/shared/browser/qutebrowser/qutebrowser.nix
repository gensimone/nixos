{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    qutebrowser # Keyboard-focused browser with a minimal GUI
  ];

  xdg.configFile."qutebrowser/config.py".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/qutebrowser/config.py;
}
