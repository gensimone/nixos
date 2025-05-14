{ ... }:

{
  programs.nvf.settings.vim.binds = {
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
