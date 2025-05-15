vim.opt.fillchars:append { eob = " " }

vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

function ToggleSignAndNumber()
    vim.o.signcolumn = vim.o.signcolumn == "yes" and "no" or "yes"
    vim.o.number = not vim.o.number
    vim.o.laststatus = vim.o.laststatus == 0 and 2 or 0
end

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', 'ts', ':lua ToggleSignAndNumber()<CR>', default_opts)

-- Make transparent window transparent
vim.cmd("highlight Pmenu guibg=NONE")
vim.cmd("highlight Float guibg=NONE")
vim.cmd("highlight NormalFloat guibg=NONE")

