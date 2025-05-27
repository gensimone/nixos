{ pkgs, ... }:

{
  home.packages = with pkgs; [
    edopro # Bleeding-edge automatic duel simulator, a fork of the YGOPro client
  ];
}
