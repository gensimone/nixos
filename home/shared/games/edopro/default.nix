{ pkgs, config, ... }:

{
  home.packages = with pkgs; [ edopro ];
  home.file.".local/share/edopro/deck".source = config.lib.file.mkOutOfStoreSymlink /home/simone/sources/personal/nixos/home/shared/games/edopro/deck;
}
