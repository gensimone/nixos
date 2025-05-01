{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    megasync # Easy automated syncing between your computers and your MEGA Cloud Drive
  ];
}
