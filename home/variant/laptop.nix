{ pkgs, ... }:

{
  imports = [
    ./core.nix
    ../shared/batsignal.nix
  ];

  home = {
    shellAliases.hr = "nh home switch -c laptop";
    packages = with pkgs; [ brightnessctl ];
  };
}
