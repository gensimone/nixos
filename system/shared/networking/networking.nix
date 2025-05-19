{ ... }:

{
  networking.networkmanager.enable = true;

  imports = [
    ./dns.nix
    ./firewall.nix
  ];
}
