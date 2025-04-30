return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>gc', ':Telescope git_commits<cr>', mode = { 'n' }, desc = 'Git Commits' },
      { '<leader>gs', ':Telescope git_status<cr>',  mode = { 'n' }, desc = 'Git Status' },
      { '<leader>fm', ':Telescope man_pages<cr>',   mode = { 'n' }, desc = 'Man Pages' },
      { '<leader>ff', ':Telescope find_files<cr>',  mode = { 'n' }, desc = 'Find Files' },
      { '<leader>fg', ':Telescope live_grep<cr>',   mode = { 'n' }, desc = 'Live Grep' },
      { '<leader>fw', ':Telescope grep_string<cr>', mode = { 'n' }, desc = 'Grep String' },
      { '<leader>fr', ':Telescope oldfiles<cr>',    mode = { 'n' }, desc = 'Recent Files' },
      { '<leader>fn', ':Telescope notify<cr>',      mode = { 'n' }, desc = 'Notifications' },
      { '<leader>fb', ':Telescope buffers<cr>',     mode = { 'n' }, desc = 'Buffers' },
      { '<leader>lt', ':Telescope<cr>',             mode = { 'n' }, desc = 'Launch Telescope' },

      -- 'search_dirs' specific
      { '<leader>hff', ':Telescope find_files  search_dirs={"~"}<cr>', mode = { 'n' }, desc = 'Recent Files' },
      { '<leader>hfg', ':Telescope live_grep   search_dirs={"~"}<cr>', mode = { 'n' }, desc = 'Buffers' },
      { '<leader>hfw', ':Telescope grep_string search_dirs={"~"}<cr>', mode = { 'n' }, desc = 'Recent Files' },
      { '<leader>fc',  ':Telescope find_files  search_dirs={"~/.config/nvim"}<cr>', mode = { 'n' }, desc = 'Neovim Config Files' },
    },
    config = function()
      require('telescope').setup({
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
          find_files = {
            find_command = { "fd", "--hidden", "--type", "f", "--color", "never", "--no-ignore-vcs" }
          },
        },
        defaults = require('telescope.themes').get_ivy {
          mappings = {
            i = {
              -- map actions.which_key to <C-h> (default: <C-/>)
              -- actions.which_key shows the mappings for your picker,
              -- e.g. git_{create, delete, ...}_branch for the git_branches picker
              ['<C-h>'] = 'preview_scrolling_left',
              ['<C-l>'] = 'preview_scrolling_right',
            }
          }
        },
      })
    end,
}
