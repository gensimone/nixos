{ pkgs, ... }:

{
  services.xserver.desktopManager.gnome.enable = true;

  services.displayManager.defaultSession = "gnome";

  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
  };

  environment.gnome.excludePackages = with pkgs; [
    orca
    evince
    file-roller
    geary
    gnome-disk-utility
    gnome-backgrounds
    gnome-tour
    gnome-user-docs
    baobab
    epiphany
    gnome-text-editor
    gnome-calculator
    gnome-calendar
    gnome-characters
    gnome-console
    gnome-contacts
    gnome-font-viewer
    gnome-logs
    gnome-maps
    gnome-music
    gnome-system-monitor
    gnome-weather
    gnome-connections
    simple-scan
    snapshot
    totem
    yelp
    gnome-software
  ];

}
