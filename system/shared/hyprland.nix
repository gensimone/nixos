{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    brightnessctl        # This program allows you read and control device brightness
    cliphist             # Wayland clipboard manager
    libnotify            # Library that sends desktop notifications to a notification daemon
    hypridle             # Hyprland's idle daemon
    networkmanagerapplet # NetworkManager control applet for GNOME
    wl-clipboard         # Command-line copy/paste utilities for Wayland
    swayosd              # GTK based on screen display for keyboard shortcuts
    pcmanfm              # File manager with GTK interface
    pavucontrol          # PulseAudio Volume Control
    rofi-wayland         # Window switcher, run dialog and dmenu replacement for Wayland
    soteria              # Polkit authentication agent written in GTK designed to be used with any desktop environment
    hyprlock             # Hyprland's GPU-accelerated screen locking utility
    swww                 # Efficient animated wallpaper daemon for wayland, controlled at runtime
    udiskie              # Removable disk automounter for udisks
    udisks               # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
    waybar               # Highly customizable Wayland bar for Sway and Wlroots based compositors
    hyprpicker           # Wlroots-compatible Wayland color picker that does not suck
    swayimg              # Image viewer for Sway/Wayland
    mako                 # Lightweight Wayland notification daemon
  ];

  services.gvfs.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland = {
      enable = true;
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1"; # If your cursor becomes invisible
    NIXOS_OZONE_WL = "1";          # Hint electron apps to use wayland
  };
}
