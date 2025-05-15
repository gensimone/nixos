{ ... }:

{
  programs.nvf.settings.vim.binds = {
    cheatsheet.enable = true;
    whichKey = {
      enable = true;
      setupOpts = {
        notify = true;
        # classic, mordern, helix
        preset = "classic";
        win = {
          border = "rounded";
        };
      };
    };
  };
}
