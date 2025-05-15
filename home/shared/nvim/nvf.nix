{ pkgs, ... }:

{
  xdg.configFile."nvf".source = ./nvf;

  # https://notashelf.github.io/nvf/options.html
  programs.nvf = {
    enable = true;
  };

  home.packages = with pkgs; [
    tree-sitter
    nodejs_23
  ];

  imports = [
    ./globals.nix
    ./keymaps.nix
    ./options.nix
    ./diagnostics.nix
    ./autocmds.nix

    # plugins
    ./plugins/autocomplete.nix
    ./plugins/binds.nix
    ./plugins/comments.nix
    ./plugins/dashboard.nix
    ./plugins/filetree.nix
    ./plugins/lsp.nix
    ./plugins/mini.nix
    ./plugins/notes.nix
    ./plugins/notify.nix
    ./plugins/projects.nix
    ./plugins/snippets.nix
    ./plugins/telescope.nix
    ./plugins/terminal.nix
    ./plugins/theme.nix
    ./plugins/ui.nix
    ./plugins/visuals.nix
  ];
}
