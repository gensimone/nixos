{ pkgs, ... }:

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
    rsync = "gnu-rsync";
    grep = "grep --color -n -r";
    clean-boot = "sudo /run/current-system/bin/switch-to-configuration boot";
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
      initExtra = ''
        search() {
          nh search "$@" | less
        }

        # Enable vi mode
        set -o vi
      '';
    };
  };

  home.file.".local/bin/gnu-rsync".source = ./scripts/gnu-rsync;
  home.file.".local/bin/backup-all".source = ./scripts/backup-all;

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
    ../fastfetch
    ../git
    ../irssi
    ../nvim
    ../ranger
    ../tmux
  ];
}
