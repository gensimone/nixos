return {
  "gbprod/nord.nvim",
  config = function ()
    require("lazy").setup({
      {
        "gbprod/nord.nvim",
        lazy = false,
        priority = 1000,
        config = function()
          require("nord").setup({})
          vim.cmd.colorscheme("nord")
        end,
      },
      install = {
        colorscheme = { "nord" },
      },
    });

  end
}
