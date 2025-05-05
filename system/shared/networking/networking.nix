{ ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  imports = [
    ./dns.nix
    ./firewall.nix
  ];
}
