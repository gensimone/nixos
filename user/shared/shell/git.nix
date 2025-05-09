{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Simone Gentili";
    userEmail = "gensimone.git@gmail.com";
    aliases = {};
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };
}
