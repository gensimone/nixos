{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager.xfce = {
      enable = true;
      noDesktop = false;
      enableXfwm = true;
      enableScreensaver = true;
      enableWaylandSession = false;
    };

    displayManager.lightdm.enable = true;
  };

  services.displayManager.defaultSession = "xfce";

  environment.xfce.excludePackages = with pkgs.xfce; [
    parole
    xfce4-terminal
    xfce4-taskmanager
  ];
}
