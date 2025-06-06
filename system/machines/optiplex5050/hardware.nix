# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usbhid" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/3fc375e9-8310-4e37-b52d-191deb78caf5";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-62d4b711-47e3-4af1-ae11-274c739cc166".device = "/dev/disk/by-uuid/62d4b711-47e3-4af1-ae11-274c739cc166";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/4C22-74D7";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/be64fa6c-1411-46f8-b73f-16f38182806f"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp0s31f6.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
