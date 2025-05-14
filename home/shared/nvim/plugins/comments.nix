{ ... }: 

{
  programs.nvf.settings.vim.comments = {
    comment-nvim = {
      enable = true;
      setupOpts.mappings = {
        basic = false;  # wheter to enable basic mappings
        extra = false;  # wheter to enable extra mappings
        # toggleSelectedLine = "<leader>/";
        # toggleOpLeaderBlock = "<leader>/";
        # toggleSelectedBlock = null;
        # toggleOpSelectedBlock = null;
      };
    };
  };
}
