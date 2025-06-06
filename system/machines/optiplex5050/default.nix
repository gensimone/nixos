{ ... }:

{
  imports = [
    ../../shared
    ./hardware.nix
  ];

  boot = {
    initrd.luks.devices."luks-8e1b1d4f-e88e-4b82-95d5-320abe4c4e88".device = "/dev/disk/by-uuid/8e1b1d4f-e88e-4b82-95d5-320abe4c4e88";

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };
  };

  networking.hostName = "optiplex5050";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
