{ ... }:

{
  networking.networkmanager.enable = true;

  imports = [
    ./dns
    ./firewall
  ];
}
