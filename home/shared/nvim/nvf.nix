{ ... }:

{
  programs.nvf.enable = true;
  imports = [
    ./plugins/autocomplete.nix
    ./plugins/binds.nix
    ./plugins/colorscheme.nix
    ./plugins/comments.nix
    ./plugins/dashboard.nix
    ./plugins/filetree.nix
    ./plugins/globals.nix
    ./plugins/keymaps.nix
    ./plugins/lsp.nix
    ./plugins/notes.nix
    ./plugins/options.nix
    ./plugins/projects.nix
    ./plugins/snippets.nix
    ./plugins/telescope.nix
    ./plugins/terminal.nix
  ];
}
