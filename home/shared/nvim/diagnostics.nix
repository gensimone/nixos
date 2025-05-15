{ ... }:

{
  programs.nvf.settings.vim.diagnostics = {
    enable = true;
    config = {
      virtual_text = false;
      virtual_lines = false;
      underline = false;
      # Update diagnostics in Insert mode. If false, diagnostics will be updated on InsertLeave (:help InsertLeave).
      update_in_insert = false;
      float = {
        header = false;
        border = "rounded";
      };
      signs = {
        text = {
          "vim.diagnostic.severity.ERROR" = "󰅚 ";
          "vim.diagnostic.severity.WARN" = "󰀪 ";
        };
      };
    };
  };
}
