{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    tmux              # Terminal multiplexe
  ];

  home.file.".tmux.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/shell/tmux/tmux.conf;
}
