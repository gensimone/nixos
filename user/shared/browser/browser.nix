{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox     # Web browser built from Firefox source tree
    tor-browser # Privacy-focused browser routing traffic through the Tor network
  ];

  imports = [
    ./qutebrowser/qutebrowser.nix
  ];
}
