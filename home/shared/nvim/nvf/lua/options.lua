-- timeouts
vim.opt.timeout = true
vim.opt.timeoutlen = 1500

-- diagnostic
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- terminal keymaps
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]],        opts)
  vim.keymap.set('t', '<C-h>',      [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>',      [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>',      [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>',      [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>',      [[<C-\><C-n><C-w>]],   opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- make transparent window transparent
vim.cmd("highlight Pmenu guibg=NONE")
vim.cmd("highlight Float guibg=NONE")
vim.cmd("highlight NormalFloat guibg=NONE")

-- use " " instead of ~
vim.opt.fillchars:append { eob = " " }

-- toggle function and keymaps
function ToggleFocusMode()
    vim.o.signcolumn = vim.o.signcolumn == "yes" and "no" or "yes"
    vim.o.number = not vim.o.number
    vim.o.laststatus = vim.o.laststatus == 0 and 2 or 0
end

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', 'tf', ':lua ToggleFocusMode()<CR>', default_opts)
map('n', 'ts', ':lua vim.o.signcolumn = vim.o.signcolumn == "yes" and "no" or "yes"<CR>', default_opts)
map('n', 'tn', ':lua vim.o.number = not vim.o.number<CR>', default_opts)
map('n', 'tl', ':lua vim.o.laststatus = vim.o.laststatus == 0 and 2 or 0<CR>', default_opts)
