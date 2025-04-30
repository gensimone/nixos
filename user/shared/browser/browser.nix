{ config, pkgs, ... }:

{
  home.packages = [
    qutebrowser # Keyboard-focused browser with a minimal GUI
    firefox     # Web browser built from Firefox source tree
    tor-browser # Privacy-focused browser routing traffic through the Tor network
  ];

  imports = [
    ./qutebrowser/qutebrowser.nix
  ];
}
