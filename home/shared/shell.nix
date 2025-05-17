{ lib, pkgs, ... }:

let
  shellAliases = {
    f = "fzf --bind 'enter:become(vim {})' --height 40% --border";
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
    gitup = "git add . && git commit -m 'Update' && git push";
    cpr = "rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 \"$@\"";
    mvr = "rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files \"$@\"";
    ".." = "cd ..";
  };
in {
  programs = {
    zsh = {
      enable = false;
      shellAliases = shellAliases;
      initContent = "set -o vi";
    };
    bash = {
      enable = true;
      shellAliases = shellAliases;
      initExtra = "set -o vi";
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  home.sessionPath = [
    "$HOME/.local/bin"
  ];

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
    fzf      # Command-line fuzzy finder written in Go
  ];

  imports = [
    ./fastfetch/fastfetch.nix
    ./git.nix
    ./irssi/irssi.nix
    ./nvim/nvf.nix
    ./ranger/ranger.nix
    ./tmux/tmux.nix
  ];
}
