{ config, pkgs, ... }:

{
  imports = [
    ../shared/audio.nix
    ../shared/bluetooth.nix
    ../shared/fonts.nix
    ../shared/hyprland.nix
    ../shared/networking.nix
    ../shared/options.nix
    ../shared/programs.nix
    ../shared/shell.nix
    ../shared/timezone.nix
    ../shared/user.nix
    ../shared/virtualization.nix
    ./hardware-configuration.nix
  ];

  boot = {
    initrd.luks.devices."luks-b2a44d53-56e9-4811-944d-1cfa7e9167b3".device = "/dev/disk/by-uuid/b2a44d53-56e9-4811-944d-1cfa7e9167b3";
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };
  };

  environment.systemPackages = with pkgs; [];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
