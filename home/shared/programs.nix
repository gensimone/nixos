{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    bitwarden-desktop # Secure and free password manager for all of your devices
    blueman           # GTK-based Bluetooth Manager
    capitaine-cursors # X-cursor theme inspired by macOS and based on KDE Breeze
    cargo             # Downloads your Rust project's dependencies and builds your project
    cmus              # Small, fast and powerful console music player for Linux and *BSD
    ffmpeg            # Complete, cross-platform solution to record, convert and stream audio and video
    gcc               # GNU Compiler Collection
    gimp              # GNU Image Manipulation Program
    legcord           # Lightweight, alternative desktop client for Discord
    lm_sensors        # Tools for reading hardware sensors
    megasync          # Easy automated syncing between your computers and your MEGA Cloud Drive
    mpv               # General-purpose media player, fork of MPlayer and mplayer2
    obs-studio        # Free and open source software for video recording and live streaming
    playerctl         # Command-line utility and library for controlling media players that implement MPRIS
    qbittorrent       # Featureful free software BitTorrent client
    rsync             # Fast incremental file transfer utility
    telegram-desktop  # Telegram Desktop messaging app
    unzip             # Extraction utility for archives compressed in .zip format
    vim               # Most popular clone of the VI editor
    wireshark         # Powerful network protocol analyzer
    xdg-user-dirs     # Tool to help manage well known user directories

    jetbrains.idea-community # Free Java, Kotlin, Groovy and Scala IDE from jetbrains (patched binaries from jetbrains)
  ];
}
