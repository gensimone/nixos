{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kooha                # Elegantly record your screen
    batsignal            # Lightweight battery daemon written in C
    wl-clipboard         # Command-line copy/paste utilities for Wayland
    brightnessctl        # This program allows you read and control device brightness
    hyprpicker           # Wlroots-compatible Wayland color picker that does not suck
    libnotify            # Library that sends desktop notifications to a notification daemon
    networkmanagerapplet # NetworkManager control applet for GNOME
    pulsemixer           # Cli and curses mixer for pulseaudio
    pcmanfm              # File manager with GTK interface
    soteria              # Polkit authentication agent written in GTK designed to be used with any desktop environment
    swayimg              # Image viewer for Sway/Wayland
    swayosd              # GTK based on screen display for keyboard shortcuts
    swww                 # Efficient animated wallpaper daemon for wayland, controlled at runtime
    udiskie              # Removable disk automounter for udisks
    udisks               # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
  ];

  imports = [
    ./hyprland/hyprland.nix
    ./hypridle.nix
    ./hyprlock.nix
    ../rofi/rofi.nix
    ../waybar/waybar.nix
    ../mako.nix
    ../batsignal.nix
    ../clipse.nix
  ];
}
