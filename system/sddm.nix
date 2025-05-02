{ config, pkgs, ... }:

{
  services.displayManager = {
    sddm = {
      enable = true;
      # theme = "sddm-astronaut-theme";
      # extraPackages = with pkgs; [
      #   sddm-astronaut # Modern looking qt6 sddm theme
      # ];
      wayland.enable = true;
    };
    defaultSession = "hyprland";
  };
}
