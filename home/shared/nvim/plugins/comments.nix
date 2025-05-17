{ ... }:

{
  programs.nvf.settings.vim.comments = {
    comment-nvim = {
      enable = true;
      setupOpts.mappings = {
        basic = false;  # wheter to enable basic mappings
        extra = false;  # wheter to enable extra mappings
        toggleCurrentLine = "<leader>/";
        toggleCurrentBlock = "<leader>/";
        toggleSelectedLine = "<leader>/";
        toggleOpLeaderBlock = "<leader>/";
        toggleSelectedBlock = "<leader>/";
        toggleOpSelectedBlock = "<leader>/";
      };
    };
  };
}
