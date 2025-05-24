{ pkgs, ... }:

{
  home.packages = with pkgs; [ tor-browser ];
  imports = [
    ./qutebrowser
    ./firefox
  ];
}
