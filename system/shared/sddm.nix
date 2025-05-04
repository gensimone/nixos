{ pkgs, ... }:

{
  services.displayManager = {
    defaultSession = "hyprland";
    sddm = {
      enable = true;
      wayland.enable = true;
      extraPackages = with pkgs; [ ];
    };
  };
}
