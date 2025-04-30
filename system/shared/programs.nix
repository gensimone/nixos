{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bitwarden-desktop # Secure and free password manager for all of your devices
    blueman           # GTK-based Bluetooth Manager
    capitaine-cursors # X-cursor theme inspired by macOS and based on KDE Breeze
    lf                # Terminal file manager written in Go and heavily inspired by ranger
    cargo             # Downloads your Rust project's dependencies and builds your project
    cmus              # Small, fast and powerful console music player for Linux and *BSD
    fastfetch         # An actively maintained, feature-rich and performance oriented, neofetch like system information tool
    firefox           # Web browser built from Firefox source tree
    fd                # Simple, fast and user-friendly alternative to find
    ffmpeg            # Complete, cross-platform solution to record, convert and stream audio and video
    gcc               # GNU Compiler Collection
    gimp              # GNU Image Manipulation Program
    git               # Distributed version control system
    irssi             # Terminal based IRC client
    kitty             # Modern, hackable, featureful, OpenGL based terminal emulator
    legcord           # Lightweight, alternative desktop client for Discord
    lm_sensors        # Tools for reading hardware sensors
    megasync          # Easy automated syncing between your computers and your MEGA Cloud Drive
    mpv               # General-purpose media player, fork of MPlayer and mplayer2
    neovim            # Vim text editor fork focused on extensibility and agility
    nodejs            # Event-driven I/O framework for the V8 JavaScript engine
    pipx              # Install and run Python applications in isolated environments
    poetry            # Python dependency management and packaging made easy
    pyright           # Type checker for the Python language
    python3           # High-level dynamically-typed programming language
    qbittorrent       # Featureful free software BitTorrent client
    ripgrep           # Utility that combines the usability of The Silver Searcher with the raw speed of grep
    rustup            # Rust toolchain installer
    syncthing         # Open Source Continuous File Synchronization
    telegram-desktop  # Telegram Desktop messaging app
    tgpt              # ChatGPT in terminal without needing API keys
    tmux              # Terminal multiplexe
    tor-browser       # Privacy-focused browser routing traffic through the Tor network
    tree              # Command to produce a depth indented directory listing
    unzip             # Extraction utility for archives compressed in .zip format
    vim               # Most popular clone of the VI editor
    wget              # Tool for retrieving files using HTTP, HTTPS, and FTP
    wireshark         # Powerful network protocol analyzer
    xdg-user-dirs     # Tool to help manage well known user directories
    zathura           # Highly customizable and functional PDF viewer
    qutebrowser               # Keyboard-focused browser with a minimal GUI
    python312Packages.adblock # Python wrapper for Brave's adblocking library
  ];
}
