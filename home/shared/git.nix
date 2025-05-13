{ ... }:

{
  programs.git = {
    enable = true;
    userName = "Simone Gentili";
    userEmail = "gensimone.git@gmail.com";
    aliases = {
      co = "checkout";
      br = "branch";
      ci = "commit";
      st = "status";
      last = "log -1 HEAD";
      unstage = "reset HEAD --";
      lg = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative";
    };
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };
}
