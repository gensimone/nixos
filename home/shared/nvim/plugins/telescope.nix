{ pkgs, ... }:

{
  programs.nvf.settings.vim.telescope = {
    enable = true;
    setupOpts = {
      defaults = {
        layout_strategy = "horizontal";
        color_devicons = true;
        entry_prefix = " ";
        initial_mode = "insert"; # or normal
        file_ignore_patterns = [
          "node_modules"
          "%.git/"
          "dist/"
          "build/"
          "target/"
          "result/"
        ];
        path_display = [ "smart" ]; # hidden, tail, absolute, smart, shorten, truncate
        prompt_prefix = "  ";
        selection_strategy = "reset"; # reset, follow, row, closest, none
        set_env = { COLORTERM = "truecolor"; }; # set an environment for term_previewer
        sorting_strategy = "ascending";

        # Defines the command that will be used for live_grep and grep_string pickers.
        # Make sure that color is set to never because telescope does not yet interpret color codes.
        vimgrep_arguments = [
          "${pkgs.ripgrep}/bin/rg"
          "--color=never"
          "--no-heading"
          "--with-filename"
          "--line-number"
          "--column"
          "--smart-case"
          "--hidden"
          "--no-ignore"
        ];
      };
      pickers = {
        find_files = {
          find_command = [
            "rg"
            "--files"
            "--hidden"
            "--glob"
            "!**/.git/*"
          ];
        };
      };
    };
    mappings = {
      buffers = null;
      findFiles = null;
      findProjects = null;
      liveGrep = null;
      open = null;
      diagnostics = null;
      lspDefinitions = null;
      lspDocumentSymbols = null;
      lspImplementations = null;
      lspReferences = null;
      lspTypeDefinitions = null;
      lspWorkspaceSymbols = null;
    };
  };
}
