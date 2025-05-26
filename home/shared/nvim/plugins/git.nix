{ ... }:

{
  programs.nvf.settings.vim.git = {
    # enabling this option will enable the following plugins:
    # -> gisings
    # -> vim-fugitive
    # -> git-conflict
    # -> gitlinker-nvim
    enable = true;

    git-conflict.enable = false;
    gitlinker-nvim.enable = false;

    gitsigns = {
      enable = true;
      setupOpts = {
        # show intra-line word-diff in the buffer
        word_diff = false;
      };
      mappings = {
        # diffProject = "<leader>hD";
        # diffThis = "<leader>hd";
        # toggleDeleted = "<leader>td";

        # hunk
        nextHunk = "]c";
        previousHunk = "[c";
        previewHunk = "<leader>hp";
        resetHunk = "<leader>hr";
        stageHunk = "<leader>hs";
        undoStageHunk = "<leader>hu";

        # buffer
        stageBuffer = "<leader>bs";
        resetBuffer = "<leader>br";

        # blame
        # blameLine = "<leader>hb";
        toggleBlame = "tb";
      };
    };

    vim-fugitive = {
      enable = false;
    };
  };

}
