{ ... }:

{
  programs.nvf.settings.vim = {
    lsp.enable = true;
    languages = {
      enableTreesitter = true;
      clang = {
        enable = true;
        treesitter.enable = true;
        # C syntax for headers. Can fix treesitter errors, see:
        # https://www.reddit.com/r/neovim/comments/orfpcd/question_does_the_c_parser_from_nvimtreesitter/
        cHeader = true;
        lsp = {
          enable = true;
          opts = null;
          server = "clangd";
        };
      };
      assembly = {
        enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      python = {
        enable = true;
        treesitter.enable = true;
        lsp = {
          enable = true;
          server = "basedpyright";
        };
        format = {
          enable = true;
          type = "black";
        };
      };
      nix = {
        enable = true;
        treesitter.enable = true;
        lsp = {
          enable = true;
          options = null;
          server = "nil"; # or nixd
        };
        format = {
          enable = true;
          type = "alejandra";
        };
        extraDiagnostics = {
          enable = true;
          types = [ "statix" "deadnix" ];
        };
      };
      java = {
        enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      rust.enable = true;
    };
  };
}
