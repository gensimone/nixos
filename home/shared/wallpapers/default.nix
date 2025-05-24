{ config, ... }: { home.file."pictures/wallpapers".source = config.lib.file.mkOutOfStoreSymlink /home/simone/sources/personal/nixos/home/shared/wallpapers/wallpapers; }
