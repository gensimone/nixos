{ ... }:

{
  programs.nvf.settings.vim.comments = {

    comment-nvim = {
      enable = true;
      setupOpts.mappings = {
        basic = true;  # wheter to enable basic mappings
        extra = true;  # wheter to enable extra mappings

        # they don't work at all
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
