{ ... }:

{
  imports = [ ../../shared ];

  home = {
    shellAliases = {
      hr = "nh home switch -c optiplex5050";
    };
    stateVersion = "24.11";
  };
}
