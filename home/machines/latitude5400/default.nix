{ pkgs, ... }:

{
  imports = [
    ../../shared
    ../../shared/batsignal
  ];

  home = {
    shellAliases = {
      hr = "nh home switch -c latitude5400";
    };
    packages = with pkgs; [ brightnessctl ];
    stateVersion = "24.11";
  };
}
