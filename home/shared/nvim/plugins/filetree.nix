{ ... }:

{
  programs.nvf.settings.vim.filetree = {
    nvimTree = {
      enable = true;
      openOnSetup = false;
      setupOpts = {
        sync_root_with_cwd = true;
        update_focused_file.enable = true;
        filters.dotfiles = false;
        git.enable = false;
        actions = {
          open_file = {
            resize_window = true;
            quit_on_open = true;
          };
        };
        # TODO: trash support
        # trash = {};
        renderer = {
          icons = {
            webdev_colors = true;
          };
        };
        view = {
          width = 20;
          side = "left";
        };
      };
      mappings = {
        toggle = "<leader>e";
      };
    };
  };
}
