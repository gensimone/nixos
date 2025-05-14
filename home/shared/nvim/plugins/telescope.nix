{ ... }:

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
        layout = {};
        # hidden, tail, absolute, smart, shorten, truncate
        path_display = [ "smart" ];
        prompt_prefix = "  ";
        # reset, follow, row, closest, none
        selection_strategy = "reset";
        # set an environment for term_previewer
        set_env = { COLORTERM = "truecolor"; };
        sorting_strategy = "ascending";
      };
    };
    mappings = {
      buffers = "<leader>fb";
      findFiles = "<leader>ff";
      findProjects = "<leader>fp";
      liveGrep = "<leader>fg";

      open = "<leader>ft";

      # lsp stuff
      diagnostics = "<leader>fld";
      lspDefinitions = "<leader>flD";
      lspDocumentSymbols = null;
      lspImplementations = null;
      lspReferences = null;
      lspTypeDefinitions = null;
      lspWorkspaceSymbols = null;
    };
  };
}
