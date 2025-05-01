{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    qutebrowser               # Keyboard-focused browser with a minimal GUI
    python312Packages.adblock # Python wrapper for Brave's adblocking library
  ];

  xdg.configFile."qutebrowser/config.py".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/browser/qutebrowser/config.py;
}
