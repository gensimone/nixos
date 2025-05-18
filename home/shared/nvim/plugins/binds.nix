{ ... }:

{
  programs.nvf.settings.vim.binds = {
    cheatsheet.enable = true;

    whichKey = {
      enable = true;
      setupOpts = {
        notify = true;
        preset = "classic"; # classic, mordern, helix
        win = { border = "rounded"; };
      };
    };

  };
}
