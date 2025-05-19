{ pkgs, ... }:

{
  users.defaultUserShell = pkgs.bash;
  environment = {
    variables = {
      EDITOR = "vi";
      VISUAL = "less";
    };
    shellAliases = {
      sr = "nh os switch";
      rm = "rm -i";
      ln = "ln -i";
      cp = "cp -i";
      mv = "mv -i";
      du = "du -h";
      df = "df -h";
    };
  };
}
