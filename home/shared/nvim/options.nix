{ ... }: 

{
  programs.nvf.settings.vim.options = {
    shiftwidth = 2;
    wrap = false;
    autoindent = true;
    swapfile = false;
    undofile = true;
    cmdheight = 1;
    termguicolors = true;
    tabstop = 2;
    laststatus = 0;
    number = false;
    relativenumber = false;
    signcolumn = "no";
    conceallevel = 3;
    updatetime = 250;
    ru = false;
  };
}
