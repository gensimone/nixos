{ ... }:

{
  programs.nvf.settings.vim.ui = {
    noice.enable = true;
    borders = {
      enable = true;
      # none, single, double, rounded, solid, shadow
      globalStyle = "rounded";
      plugins.nvim-cmp.enable = true;
    };
  };
}
