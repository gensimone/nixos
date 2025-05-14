{ ... }:

{
  programs.nvf.settings.vim.languages = {
    enableLSP = true;
    enableTreesitter = true;

    # lauguages
    assembly.enable = true;
    clang.enable = true;
    nix.enable = true;
    python.enable = true;
    rust.enable = true;
  };
}
