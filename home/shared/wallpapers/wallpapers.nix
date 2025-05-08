{ config, ... }: { home.file."pictures/wallpapers".source = config.lib.file.mkOutOfStoreSymlink /home/simone/.config/nixos/home/shared/wallpapers/wallpapers; }
