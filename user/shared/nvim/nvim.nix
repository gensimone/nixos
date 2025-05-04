{ pkgs, ... }:

{
  home.packages = with pkgs; [
    python312Packages.pip
    neovim
    nodejs
    lua
    luajitPackages.luarocks
  ];

  xdg.configFile."nvim".source = ./nvim;
}
