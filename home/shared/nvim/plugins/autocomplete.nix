{ ... }:

{
  programs.nvf.settings.vim.autocomplete = {

    nvim-cmp = {
      enable = true;
      sources = {
        path = "[Path]";
        luasnip = "[LuaSnip]";
      };
      mappings = {
        close = null;
        next = "<C-n>";
        previous = "<C-p>";
        scrollDocsUp = "<C-u>";
        scrollDocsDown = "<C-d>";
        confirm = "<CR>";
        complete = "<C-Space>";
      };
    };

  };
}
