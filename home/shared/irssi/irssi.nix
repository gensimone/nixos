{ ... }:

{
  programs.irssi = {
    enable = true;
    aliases = {};
    networks = {};
    extraConfig = "";
  };

  home.file.".irssi/scripts/autorun".source = ./autorun;
}
