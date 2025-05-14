{ ... }:

{
  programs.nvf.settings.vim.projects = {
    project-nvim = {
      enable = true;
      setupOpts = {
        manual_mode = false;
        detection_methods = [ "pattern" "lsp" ];
        patterns = [
          ".git"
          "_darcs"
          ".hg"
          ".bzr"
          ".svn"
          "Makefile"
          "package.json"
          "flake.nix"
          "cargo.toml"
        ];
      };
    };
  };
}
