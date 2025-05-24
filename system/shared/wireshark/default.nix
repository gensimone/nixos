{ ... }:

{
  programs.wireshark = {
    enable = true;
    usbmon.enable = true;
    dumpcap.enable = true;
  };

  users.groups.wireshark.members = [ "simone" ];
}
