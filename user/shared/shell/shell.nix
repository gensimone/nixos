{ config, pkgs, ...}:

{
  programs.zsh.enable = true;

  home.packages = [
    fastfetch         # An actively maintained, feature-rich and performance oriented, neofetch like system information tool
    fd                # Simple, fast and user-friendly alternative to find
    irssi             # Terminal based IRC client
    lf                # Terminal file manager written in Go and heavily inspired by ranger
    ripgrep           # Utility that combines the usability of The Silver Searcher with the raw speed of grep
    tgpt              # ChatGPT in terminal without needing API keys
    tmux              # Terminal multiplexe
    tree              # Command to produce a depth indented directory listing
    wget              # Tool for retrieving files using HTTP, HTTPS, and FTP
  ]

  home.file.".zshrc".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/zsh/.zshrc;

  imports = [
    ./fastfetch/fastfetch.nix
    ./tmux/tmux.nix
    ./nvim/nvim.nix
  ];
}
