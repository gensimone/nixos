{ config, pkgs, ...}:

{
  programs.zsh.enable = true;
  home.file.".zshrc".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/zsh/.zshrc;
}
