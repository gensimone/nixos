{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    nodejs
    lua
    luajitPackages.luarocks
  ];

  xdg.configFile."nvim".source = ./nvim;
}
