{ ... }:

{
  programs.nvf.settings.vim.notes = {
    todo-comments = {
      enable = true;
      mappings = {
        telescope = "<leader>tds";
      };
    };
    neorg = {
      enable = true;
      treesitter.enable = true;
      setupOpts = {
        load = {
          "core.defaults".enable = true;
          "core.qol.toc" = {
            enable = true;
            config = {
              close_after_use = true;
              # Enter a ToC window opened manually (any ToC window not opened by auto_toc).
              enter = true;
              # width of the Table of Contents window will automatically fit its longest line, up to max_width.
              fit_width = false;
              # enable cursorline in the ToC window, and sync the cursor position between ToC and content window.
              sync_cursorline = true;
              auto_toc = {
                # automatically close the ToC window when there is no longer an open norg buffer.
                close = false;
                # will exit nvim if the ToC is the last buffer on the screen, similar to help windows.
                exit_nvim = false;
                # enter an automatically opened ToC window.
                enter = false;
                # automatically open a ToC window when entering any norg buffer.
                open = false;
              };
            };
          };
          "core.concealer" = {
            enable = true;
            config = {
              folds = true;
              # basic, diamond, varied
              icon_preset = "basic";
              # when set to auto, Neorg will open all folds when opening new documents
              # if foldlevel is 0. When set to always, Neorg will always open all folds
              # when opening new documents. When set to never, Neorg will not do anything.
              init_open_folds = "auto";
            };
          };
          "core.export" = {
            enable = true;
            config = {
              markdown.extensions = [ "all" ];
            };
          };
        };
      };
    };
  };
}
