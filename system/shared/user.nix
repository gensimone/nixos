{ pkgs, ... }:

{
  users.users.simone = {
    isNormalUser = true;
    description = "Simone";
    extraGroups = [ "wireshark" "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  services.displayManager.autoLogin = {
    enable = true;
    user = "simone";
  };
}
