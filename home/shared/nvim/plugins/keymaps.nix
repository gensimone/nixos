{ ... }:

{
  programs.nvf.settings.vim.keymaps = [
    { key = "<c-k>"; mode = "n"; action = ":wincmd k<CR>"; }
    { key = "<c-j>"; mode = "n"; action = ":wincmd j<CR>"; }
    { key = "<c-h>"; mode = "n"; action = ":wincmd h<CR>"; }
    { key = "<c-l>"; mode = "n"; action = ":wincmd l<CR>"; }

    { key = "<S-j>"; mode = "n"; action = "<cmd>resize +2<CR>"; desc = "Increase window height"; }
    { key = "<S-k>"; mode = "n"; action = "<cmd>resize -2<CR>"; desc = "Decrease window height"; }
    { key = "<S-h>"; mode = "n"; action = "<cmd>vertical resize +2<CR>"; desc = "Increase window width"; }
    { key = "<S-l>"; mode = "n"; action = "<cmd>vertical resize -2<CR>"; desc = "Decrease window width"; }

    { key = "<leader>n"; mode = "n"; action = ":bn<CR>"; desc = "Next buffer"; }
    { key = "<leader>p"; mode = "n"; action = ":bp<CR>"; desc = "Previous buffer"; }
    { key = "<leader>c"; mode = "n"; action = ":bd<CR>"; desc = "Close buffer"; }

    { key = "<leader>q"; mode = "n";       action = ":q<CR>"; }
    { key = "<leader>y"; mode = ["n" "v"]; action = "[['+y]]"; }
    { key = "<esc>";     mode = "n";       action = ":noh<CR>"; }
  ];
}
