{ ... }:

{
  imports = [
    ../../shared/audio.nix
    ../../shared/bluetooth.nix
    ../../shared/documentation.nix
    ../../shared/fonts.nix
    ../../shared/hyprland.nix
    ../../shared/networking/networking.nix
    ../../shared/nh.nix
    ../../shared/options.nix
    ../../shared/power.nix
    ../../shared/programs.nix
    ../../shared/shell.nix
    ../../shared/timezone.nix
    ../../shared/user.nix
    ../../shared/virtualization.nix
    ../../shared/wireshark.nix
    ./hardware-configuration.nix
  ];

  boot = {
    initrd.luks.devices."luks-4a9455ec-d5d9-4f6c-a619-d37de610a85a".device = "/dev/disk/by-uuid/4a9455ec-d5d9-4f6c-a619-d37de610a85a";
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };
  };

  networking.hostName = "latitude5400";

  environment.systemPackages = [];
  environment.shellAliases = {};

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
