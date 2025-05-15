{ ... }:

{
  programs.nvf.settings.vim.visuals = {
    nvim-web-devicons = { 
      enable = true; 
      setupOpts = {
        color_icons = true;
        variant = "dark"; # light, dark or null
      };
    };
  };
}
