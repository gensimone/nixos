{ ... }:

{
  programs.nvf.settings.vim.ui = {
    noice.enable = true;
    borders = {
      enable = true;
      globalStyle = "rounded"; # none, single, double, rounded, solid, shadow
      plugins.nvim-cmp.enable = true;
    };
  };
}
