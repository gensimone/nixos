{ ... }:

{
  programs.nvf.settings.vim.comments = {

    comment-nvim = {
      enable = true;
      setupOpts.mappings = {
        basic = false;  # wheter to enable basic mappings
        extra = false;  # wheter to enable extra mappings

        # they don't work at all
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
