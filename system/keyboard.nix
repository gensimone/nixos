{ config, pkgs, ... }:

{
  services.xserver = {
    xkb = {
      layout = "us";
      variant = "";
      options = "ctrl:nocaps";
    };
  };
}
