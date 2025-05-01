{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    batsignal            # Lightweight battery daemon written in C
    brightnessctl        # This program allows you read and control device brightness
    hyprpicker           # Wlroots-compatible Wayland color picker that does not suck
    libnotify            # Library that sends desktop notifications to a notification daemon
    networkmanagerapplet # NetworkManager control applet for GNOME
    pavucontrol          # PulseAudio Volume Control
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
    ./hypridle/hypridle.nix
    ./hyprlock/hyprlock.nix

    ../rofi/rofi.nix
    ../waybar/waybar.nix
    ../mako/mako.nix
    ../theme.nix
  ];
}
