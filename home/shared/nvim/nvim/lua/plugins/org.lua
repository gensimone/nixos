return {
  {
    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
    keys = {
      { '<leader>oj', ':Neorg journal custom<cr>',  mode = { 'n' }, desc = 'Journal' },
      { '<leader>ou', ':Neorg workspace university<cr>', mode = { 'n' }, desc = 'University' },
      { '<leader>op', ':Neorg workspace projects<cr>', mode = { 'n' }, desc = 'Projects' },
      { '<leader>ot', ':Neorg toc<cr>',             mode = { 'n' }, desc = 'TOC' },
    },
    config = function ()
      require('neorg').setup({
        load = {
            ['core.export'] = {
              config = {
                markdown = {
                  extensions = { "all" },
                },
              }
            },
            ['core.defaults'] = {},
            ['core.qol.toc'] = {
              config = {
                -- Options for automatically opening/entering the ToC window.
                auto_toc = {
                  -- Automatically close the ToC window when there is no longer an open norg buffer.
                  close = false,
                  -- Will exit nvim if the ToC is the last buffer on the screen, similar to help windows.
                  exit_nvim = false,
                  -- Enter an automatically opened ToC window.
                  enter = false,
                  -- Automatically open a ToC window when entering any norg buffer.
                  open = false,
                },
                -- Close the Table of Contents after an entry in the table is picked.
                close_after_use = true,
                -- Enter a ToC window opened manually (any ToC window not opened by auto_toc).
                enter = true,
                -- Width of the Table of Contents window will automatically fit its longest line, up to max_width.
                fit_width = false,
                -- Enable cursorline in the ToC window, and sync the cursor position between ToC and content window.
                sync_cursorline = true
              }
            },
            ['core.concealer'] = {
              config = {
                folds = true,
                -- Possible values are: basic, diamond, varied.
                icon_preset = "basic",
                -- When set to auto, Neorg will open all folds when opening new documents
                -- if foldlevel is 0. When set to always, Neorg will always open all folds
                -- when opening new documents. When set to never, Neorg will not do anything.
                init_open_folds = "never",
              },
            },
            ['core.journal'] = {
              config = {
                journal_folder = '~/journal',
                strategy = 'nested',
                template_name = 'template.norg',
                use_template = true,
                toc_format = nil
              }
            },
            ['core.dirman'] = {
              config = {
                workspaces = {
                  university = '~/university',
                  projects = '~/projects',
                },
                default_workspace = "university"
              }
            },
        }
      })
    end
  }
}
