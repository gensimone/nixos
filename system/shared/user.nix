{ ... }:

{
  users.users.simone = {
    isNormalUser = true;
    description = "Simone";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [];
  };

  services.displayManager.autoLogin = {
    enable = true;
    user = "simone";
  };

  # required to mount with udisks
  services.gvfs.enable = true;
}
