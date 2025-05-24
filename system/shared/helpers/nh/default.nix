{ ... }:

{
  programs.nh = {
    enable = true;
    #OPTIM: use $HOME ?
    flake = "/home/simone/sources/personal/nixos";
  };
}
