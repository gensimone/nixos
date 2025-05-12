{ pkgs, ... }:

{
  home.packages = with pkgs; [
    batsignal            # Lightweight battery daemon written in C
    brightnessctl        # This program allows you read and control device brightness
    grim                 # Grab images from a Wayland compositor
    hyprpicker           # Wlroots-compatible Wayland color picker that does not suck
    libnotify            # Library that sends desktop notifications to a notification daemon
    networkmanagerapplet # NetworkManager control applet for GNOME
    pcmanfm              # File manager with GTK interface
    pulsemixer           # Cli and curses mixer for pulseaudio
    slurp                # Select a region in a Wayland compositor
    soteria              # Polkit authentication agent written in GTK designed to be used with any desktop environment
    swayimg              # Image viewer for Sway/Wayland
    swayosd              # GTK based on screen display for keyboard shortcuts
    swww                 # Efficient animated wallpaper daemon for wayland, controlled at runtime
    udiskie              # Removable disk automounter for udisks
    udisks               # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
    wl-clipboard         # Command-line copy/paste utilities for Wayland
  ];

  imports = [
    ../batsignal.nix
    ../clipse.nix
    ../rofi/rofi.nix
    ../swaync/swaync.nix
    ../waybar/waybar.nix
    ../swappy/swappy.nix
    ./hypridle.nix
    ./hyprland/hyprland.nix
    ./hyprlock.nix
  ];
}
