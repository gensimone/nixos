{ pkgs, ... }:

{
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment = {
    variables = {
      EDITOR = "vi";
      VISUAL = "less";
    };
    shellAliases = {
      rm = "rm -i";
      ln = "ln -i";
      cp = "cp -i";
      mv = "mv -i";
      du = "du -h";
      df = "df -h";
    };
  };
}
