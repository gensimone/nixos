{ pkgs, ... }:

{
  services.mpd = {
    enable = true;
    # dataDir = "";
    # playlistDirectory "";
    musicDirectory = "$XDG_MUSIC_DIR";
    network = {
      port = 6600; # default
      listenAddress = "127.0.0.1";
      startWhenNeeded = false; # enable systemd socket activation.
    };
  };

  # client
  home.packages = with pkgs; [ rmpc ];

  xdg.configFile."rmpc/themes".source = ./themes;
  xdg.configFile."rmpc/config.ron".source = ./config.ron;
  xdg.configFile."rmpc/scripts".source = ./scripts;
}
