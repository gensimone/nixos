return {
  {
    'coffebar/neovim-project',
    lazy = false,
    priority = 100,
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim' },
      { 'Shatur/neovim-session-manager' },
    },
    keys = {
      { '<leader>fp', ':NeovimProjectDiscover<cr>',   mode = { 'n' }, desc = 'Search Project' },
      { '<leader>rp', ':NeovimProjectLoadRecent<cr>', mode = { 'n' }, desc = 'Recent Project' },
    },
    opts = {
      projects = {
        '~/sources/personal/*',
        '~/sources/*',
        '~/.config/nvim'
      },

      -- Picker to use for project selection
      -- Options: 'telescope', 'fzf-lua'
      -- Fallback to builtin select ui if the specified picker is not available
      picker = {
        type = 'telescope', -- or 'fzf-lua'
        opts = {
          -- picker-specific options
        },
      },

      -- Path to store history and sessions
      datapath = vim.fn.stdpath('data'), -- ~/.local/share/nvim/

      -- Load the most recent session on startup if not in the project directory
      last_session_on_startup = false,

      -- Dashboard mode prevent session autoload on startup
      dashboard_mode = true,

      -- Timeout in milliseconds before trigger FileType autocmd after session load
      -- to make sure lsp servers are attached to the current buffer.
      -- Set to 0 to disable triggering FileType autocmd
      filetype_autocmd_timeout = 200,

      -- Keymap to delete project from history in Telescope picker
      forget_project_keys = {
          -- insert mode: Ctrl+d
          i = '<C-d>',
          -- normal mode: d
          n = 'd'
      },

      -- Overwrite some of Session Manager options
      session_manager_opts = {
        autosave_ignore_dirs = {
          vim.fn.expand('~'), -- don't create a session for $HOME/
          '/tmp',
        },
        autosave_ignore_filetypes = {
          -- All buffers of these file types will be closed before the session is saved
          'ccc-ui',
          'gitcommit',
          'gitrebase',
          'qf',
          'toggleterm',
        },
      },

      sync_root_with_cwd = true,
    },

    init = function()
      -- enable saving the state of plugins in the session
      -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
      vim.opt.sessionoptions:append('globals')
    end,
  }

}
