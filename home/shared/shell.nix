{ lib, pkgs, ... }:

let
  shellAliases = {
    cp = "cp -i";
    df = "df -h";
    du = "du -h";
    free = "free -h";
    gpt = "tgpt -m";
    ln = "ln -i";
    mv = "mv -i";
    rm = "rm -i";
    vi = "nvim";
    vim = "nvim";
    clean-boot = "sudo /run/current-system/bin/switch-to-configuration boot";
    clean-all = "sudo nix-collect-garbage -d && clean-boot";
    build-all = "sys-rebuild && home-rebuild";
  };
in {
  programs.zsh = {
    enable = true;
    shellAliases = shellAliases;
    initContent = "set -o vi";
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      scan_timeout = 10;
      character = {
        success_symbol = "➜";
        error_symbol = "➜";
      };
    };
  };

  home.packages = with pkgs; [
    fd       # Simple, fast and user-friendly alternative to find
    ripgrep  # Utility that combines the usability of The Silver Searcher with the raw speed of grep
    tgpt     # ChatGPT in terminal without needing API keys
    tree     # Command to produce a depth indented directory listing
    wget     # Tool for retrieving files using HTTP, HTTPS, and FTP
  ];

  imports = [
    ./fastfetch/fastfetch.nix
    ./git.nix
    ./nvim/nvim.nix
    ./ranger/ranger.nix
    ./tmux/tmux.nix
    ./irssi/irssi.nix
  ];
}
