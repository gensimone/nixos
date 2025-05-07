vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd('set noshowcmd')
vim.cmd('set nowrap')
vim.cmd('set noru')

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.background = "light"

vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.signcolumn = "no"
vim.opt.undofile = true
vim.opt.laststatus = 0
vim.opt.conceallevel = 3
vim.opt.fillchars:append { eob = " " }
vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

function ToggleSignAndNumber()
    -- sort of a "ternary" operator in lua
    -- vim.o.signcolumn = vim.o.signcolumn == "yes" and "no" or "yes"
    -- vim.o.relativenumber = not vim.o.relativenumber
    vim.o.number = not vim.o.number
    if vim.o.laststatus == 0 then
      vim.o.laststatus = 2
    else
      vim.o.laststatus = 0
    end
end

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', 'ts', ':lua ToggleSignAndNumber()<CR>', default_opts)
