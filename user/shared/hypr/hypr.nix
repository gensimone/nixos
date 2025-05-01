{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    brightnessctl        # This program allows you read and control device brightness
    libnotify            # Library that sends desktop notifications to a notification daemon
    hypridle             # Hyprland's idle daemon
    networkmanagerapplet # NetworkManager control applet for GNOME
    swayosd              # GTK based on screen display for keyboard shortcuts
    pcmanfm              # File manager with GTK interface
    pavucontrol          # PulseAudio Volume Control
    soteria              # Polkit authentication agent written in GTK designed to be used with any desktop environment
    hyprlock             # Hyprland's GPU-accelerated screen locking utility
    swww                 # Efficient animated wallpaper daemon for wayland, controlled at runtime
    udiskie              # Removable disk automounter for udisks
    udisks               # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
    hyprpicker           # Wlroots-compatible Wayland color picker that does not suck
    swayimg              # Image viewer for Sway/Wayland
    batsignal            # Lightweight battery daemon written in C
  ];

  home.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1"; # If your cursor becomes invisible
    NIXOS_OZONE_WL = "1";          # Hint electron apps to use wayland
  };

  xdg.configFile."hypr/hyprland.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprland.conf;
  xdg.configFile."hypr/windowrules.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/windowrules.conf;
  xdg.configFile."hypr/animations.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/animations.conf;
  xdg.configFile."hypr/animations".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/animations;
  xdg.configFile."hypr/keybindings.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/keybindings.conf;
  xdg.configFile."hypr/theme.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/theme.conf;
  xdg.configFile."hypr/hyprlock.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hyprlock.conf;
  xdg.configFile."hypr/hypridle.conf".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/hypridle.conf;
  xdg.configFile."hypr/scripts".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/user/shared/hypr/scripts;

  imports = [
    ../rofi/rofi.nix
    ../waybar/waybar.nix
    ../mako/mako.nix
    ./theme.nix
  ];
}
