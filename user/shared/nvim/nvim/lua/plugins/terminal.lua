return {
  {
    'akinsho/toggleterm.nvim',
    keys = {
      { '<leader>tt', ':ToggleTerm<cr>', mode = { 'n' }, desc = "Toggle Term" },
    },
    config = function()
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
      require('toggleterm').setup({
        size = function(term)
          if term.direction == "horizontal" then
            return 25
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
        autochdir = true,
        hide_numbers = true,
        terminal_mappings = true,
        direction = 'horizontal', -- possible values: vertical, horizontal, tab, float.
        close_on_exit = true, -- close the terminal window when the process exits.
        float_opts = {
          -- The border key is *almost* the same as 'nvim_open_win'
          -- see :h nvim_open_win for details on borders however
          -- the 'curved' border is a custom border type
          -- not natively supported but implemented in this plugin.
          -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
          -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
          -- width = <value>,
          -- height = <value>,
          -- row = <value>,
          -- col = <value>,
          -- winblend = 3,
          -- zindex = <value>,
          -- title_pos = 'left' | 'center' | 'right', position of the title of the floating window
          border = 'curved'
        },
      })
    end
  },
}
