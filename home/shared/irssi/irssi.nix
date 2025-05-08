{ pkgs, ... }:

{
  home.packages = with pkgs; [ irssi ];
  home.file.".irssi/scripts/autorun".source = ./autorun;
}
