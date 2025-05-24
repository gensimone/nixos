{ ... }:

{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "simone" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
