{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim # Vim text editor fork focused on extensibility and agility

    # -- Required by the Neovim configuration
    nodejs                  # Event-driven I/O framework for the V8 JavaScript engine
    lua                     # Powerful, fast, lightweight, embeddable scripting language
    luajitPackages.luarocks # A package manager for Lua modules.
  ];

  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/shell/nvim;
}
