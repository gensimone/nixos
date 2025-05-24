{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ miru ];
}
