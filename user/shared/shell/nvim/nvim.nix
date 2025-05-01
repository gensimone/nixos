{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
  ];
  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/shell/nvim;
}
