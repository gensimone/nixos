-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Buffer
vim.keymap.set('n', '<leader>n', ':bn<cr>',                     { desc = "Next Buffer" })
vim.keymap.set('n', '<leader>p', ':bp<cr>',                     { desc = "Previous Buffer" })
vim.keymap.set('n', '<leader>c', ':bd<cr>',                     { desc = "Close Buffer" })

-- Resize (using smart-splits)
-- vim.keymap.set("n", "<S-j>", "<cmd>resize +2<cr>",          { desc = "Increase Window Height" })
-- vim.keymap.set("n", "<S-k>", "<cmd>resize -2<cr>",          { desc = "Decrease Window Height" })
-- vim.keymap.set("n", "<S-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
-- vim.keymap.set("n", "<S-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })

-- Other
vim.keymap.set('n', '<leader>q', ':q<cr>',                      { desc = "Exit Neovim" })
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]],                { desc = "Yank to Clipboard" })
vim.keymap.set('n', '<leader>fn', ':ene | startinsert<cr>',     { desc = "New File" })
vim.keymap.set('n', '<esc>', ':noh<cr>') -- Turn off highlighting until the next search
