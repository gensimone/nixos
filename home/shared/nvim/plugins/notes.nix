{ ... }:

{
  programs.nvf.settings.vim.notes = {

    todo-comments = {
      enable = true;
      mappings = {
        telescope = "<leader>ft";
      };
    };

    # neorg = {
    #   enable = true;
    #   treesitter.enable = true;
    #   setupOpts = {
    #     load = {
    #       "core.qol.toc".config = {
    #         close_after_use = true;
    #         enter = true; # Enter a ToC window opened manually (any ToC window not opened by auto_toc).
    #         fit_width = false; # width of the Table of Contents window will automatically fit its longest line, up to max_width.
    #         sync_cursorline = true; # enable cursorline in the ToC window, and sync the cursor position between ToC and content window.
    #         auto_toc = {
    #           close = false; # automatically close the ToC window when there is no longer an open norg buffer.
    #           exit_nvim = false; # will exit nvim if the ToC is the last buffer on the screen, similar to help windows.
    #           enter = false; # enter an automatically opened ToC window.
    #           open = false; # automatically open a ToC window when entering any norg buffer.
    #         };
    #       };
    #       "core.concealer".config = {
    #         folds = true;
    #         icon_preset = "basic"; # basic, diamond, varied
    #
    #         # when set to auto, Neorg will open all folds when opening new documents
    #         # if foldlevel is 0. When set to always, Neorg will always open all folds
    #         # when opening new documents. When set to never, Neorg will not do anything.
    #         init_open_folds = "always";
    #       };
    #       "core.export".config = {
    #           markdown.extensions = [ "all" ];
    #       };
    #     };
    #   };
    # };

  };
}
