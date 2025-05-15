{ ... }:

{
  programs.nvf.settings.vim = {
    lsp.enable = true;
    languages = {
      enableTreesitter = true;
      assembly.enable = true;
      clang.enable = true;
      nix.enable = true;
      python.enable = true;
      rust.enable = true;
    };
  };
}
