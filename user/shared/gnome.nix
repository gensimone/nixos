{ pkgs, ... }:

{
  programs.gnome-shell = {
    enable = true;
    # theme = {
    #   name = "";
    #   package = pkgs.some-theme;
    # };
  };

  imports = [
    ./dconf.nix
  ];
}
