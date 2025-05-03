{ pkgs, ... }:

{
  home.packages = with pkgs; [ firefox tor-browser ];
  imports = [ ./qutebrowser/qutebrowser.nix ];
}
