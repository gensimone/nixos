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
        path_display = [ "absolute" ]; # hidden, tail, absolute, smart, shorten, truncate
        prompt_prefix = "  ";
        selection_strategy = "reset"; # reset, follow, row, closest, none
        set_env = { COLORTERM = "truecolor"; }; # set an environment for term_previewer
        sorting_strategy = "ascending";
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
