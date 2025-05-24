# https://notashelf.github.io/nvf/options.html
{ pkgs, ... }:

{
  xdg.configFile."nvf".source = ./lua;

  programs.nvf.enable = true;

  home.packages = with pkgs; [
    tree-sitter
    nodejs_24
    nil
  ];

  imports = [
    ./settings
    ./plugins
  ];
}
