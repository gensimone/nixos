{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [ edopro ];
  # see https://rycee.gitlab.io/home-manager/options.xhtml#opt-home.activation
  home.activation = {
    copyEdoproDecks = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      TARGET=~/.local/share/edopro/*/deck
      ls $TARGET &>/dev/null && rm -rfv $TARGET
      ln -sv ~/sources/personal/nixos/home/shared/games/edopro/deck ~/.local/share/edopro/*/

    '';
  };
}
