{ ... }:

{
  imports = [
    ../../shared/audio.nix
    ../../shared/bluetooth.nix
    ../../shared/fonts.nix
    ../../shared/hyprland.nix
    ../../shared/networking/networking.nix
    ../../shared/options.nix
    ../../shared/power.nix
    ../../shared/programs.nix
    ../../shared/shell.nix
    ../../shared/steam.nix
    ../../shared/timezone.nix
    ../../shared/user.nix
    ../../shared/virtualization.nix
    ../../shared/wireshark.nix
    ./hardware-configuration.nix
  ];

  boot = {
    initrd.luks.devices."luks-8e1b1d4f-e88e-4b82-95d5-320abe4c4e88".device = "/dev/disk/by-uuid/8e1b1d4f-e88e-4b82-95d5-320abe4c4e88";

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };
  };

  environment.systemPackages = [];
  environment.shellAliases = {
    sys-rebuild = "nixos-rebuild switch --flake ~/sources/personal/nixos#optiplex5050 --use-remote-sudo";
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
