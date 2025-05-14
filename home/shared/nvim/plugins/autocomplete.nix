{ ... }:

{
  programs.nvf.settings.vim.autocomplete = {
    nvim-cmp = {
      enable = true;

      sources = {
        buffer = "[Buffer]";
        path = "[Path]";
        nvim-cmp = null;
        luasnip = "[LuaSnip]";
      };

      mappings = {
        close = "<C-e>";
        scrollDocsUp = "<C-u>";
        scrollDocsDown = "C-d>";
        confirm = "<CR>";
        complete = "<C-Space>";
      };
    };
  };
}
