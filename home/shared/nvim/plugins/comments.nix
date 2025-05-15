{ ... }: 

{
  programs.nvf.settings.vim.comments = {
    comment-nvim = {
      enable = true;
      setupOpts.mappings = {
        basic = false;  # wheter to enable basic mappings
        extra = false;  # wheter to enable extra mappings
        toggleCurrentLine = null;
        toggleCurrentBlock = null;
        toggleSelectedLine = null;
        toggleOpLeaderBlock = null;
        toggleSelectedBlock = null;
        toggleOpSelectedBlock = null;
      };
    };
  };
}
