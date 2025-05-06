return {
  {
    'hrsh7th/cmp-nvim-lsp'
  },
  {
    -- Completion for paths
    'hrsh7th/cmp-path'
  },
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
  },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      vim.cmd("highlight Pmenu guibg=NONE")
      vim.cmd("highlight Float guibg=NONE")
      vim.cmd("highlight NormalFloat guibg=NONE")
      local cmp = require('cmp')
      require('luasnip.loaders.from_vscode').lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        view = {
          entries = "custom" -- can be "custom", "wildmenu" or "native"
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          -- { name = 'render-markdown' },
          { name = 'path' },
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
        }),
      })
    end,
  },
}
