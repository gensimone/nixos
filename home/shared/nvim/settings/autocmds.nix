{ ... }:

{
  programs.nvf.settings.vim.autocmds = [
    {
      desc = "Source init.lua";
      event = [ "VimEnter" ];
      command = "source ~/.config/nvf/init.lua";
    }
  ];
}
