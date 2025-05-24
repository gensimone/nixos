{ pkgs, ... }:

{
  home.packages = with pkgs; [
    grim                 # Grab images from a Wayland compositor
    hyprpicker           # Wlroots-compatible Wayland color picker that does not suck
    libnotify            # Library that sends desktop notifications to a notification daemon
    networkmanagerapplet # NetworkManager control applet for GNOME
    nautilus             # File manager from GNOME
    pulsemixer           # Cli and curses mixer for pulseaudio
    slurp                # Select a region in a Wayland compositor
    soteria              # Polkit authentication agent written in GTK designed to be used with any desktop environment
    swayosd              # GTK based on screen display for keyboard shortcuts
    swww                 # Efficient animated wallpaper daemon for wayland, controlled at runtime
    udiskie              # Removable disk automounter for udisks
    udisks               # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
    waypaper             # GUI wallpaper setter for Wayland-based window managers
    wl-clipboard         # Command-line copy/paste utilities for Wayland
  ];

  imports = [
    ../clipse
    ../rofi
    ../swappy
    ../swayimg
    ../swaync
    ../waybar
    ./hypridle
    ./hyprland
    ./hyprlock
  ];
}
