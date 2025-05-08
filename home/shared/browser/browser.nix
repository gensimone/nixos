{ pkgs, ... }:

{
  home.packages = with pkgs; [ tor-browser ];
  imports = [
    ./qutebrowser/qutebrowser.nix
    ./firefox/firefox.nix
  ];
}
