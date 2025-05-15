{ ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.displayManager = {
    defaultSession = "hyprland";
    sddm = {
      enable = true;
      wayland.enable = true;
      extraPackages = [];
    };
  };
}
