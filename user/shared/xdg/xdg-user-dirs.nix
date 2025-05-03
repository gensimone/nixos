{ config, ... }:

{
  xdg.userDirs = {
    enable = true;
    extraConfig = {
      XDG_MUSIC_DIR = "${config.home.homeDirectory}/music";
      XDG_DOCUMENTS_DIR = "${config.home.homeDirectory}/documents";
      XDG_DOWNLOAD_DIR = "${config.home.homeDirectory}/downloads";
      XDG_DESKTOP_DIR = "${config.home.homeDirectory}/desktop";
      XDG_PICTURES_DIR = "${config.home.homeDirectory}/pictures";
      XDG_PUBLICSHARE_DIR = "${config.home.homeDirectory}/public";
      XDG_TEMPLATES_DIR = "${config.home.homeDirectory}/templates";
      XDG_VIDEOS_DIR = "${config.home.homeDirectory}/videos";
    };
  };
}
