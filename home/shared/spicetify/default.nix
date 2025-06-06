{ inputs, pkgs, ... }:

let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
in {
  programs.spicetify = {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      adblockify
      hidePodcasts
      fullAppDisplay
      keyboardShortcut
    ];

    theme = spicePkgs.themes.onepunch;
    colorScheme = "dark";
  };
}
