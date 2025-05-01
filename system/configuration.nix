{ config, pkgs, ... }:

{
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./fonts.nix
    ./hardware-configuration.nix
    ./hyprland.nix
    ./networking.nix
    ./options.nix
    ./programs.nix
    ./shell.nix
    ./timezone.nix
    ./user.nix
    ./virtualization.nix
  ];

  boot = {
    initrd.luks.devices."luks-4a9455ec-d5d9-4f6c-a619-d37de610a85a".device = "/dev/disk/by-uuid/4a9455ec-d5d9-4f6c-a619-d37de610a85a";
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
