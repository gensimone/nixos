{ config, pkgs, ... }:

{
  imports = [
    ./xorg.nix
  ];

  services.xserver.desktopManager.xfce = {
    enable = true;
    enableXfwm = true;
    enableScreensaver = true;
    noDesktop = false;
  };

  services.xserver.displayManager.lightdm = {
    enable = true;
  };

  environment.xfce.excludePackages = with pkgs; [
    xfce.parole
  ];
}
