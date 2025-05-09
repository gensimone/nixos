{ config, pkgs, ... }:

{
  home.file.".tmux.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/tmux/tmux.conf;
}
