{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    python312Packages.pip
    neovim
    nodejs
    lua
    luajitPackages.luarocks
  ];

  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink /home/simone/sources/personal/nixos/home/shared/nvim/nvim;
}
