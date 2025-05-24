{ pkgs, ... }:

{
  # see https://nixos.wiki/wiki/Man_pages
  environment.systemPackages = with pkgs; [
    man-pages
    man-pages-posix
  ];

  documentation = {
    enable = true;
    dev.enable = true;
    doc.enable = true;
    info.enable = true;
    nixos.enable = true;
    man = {
      enable = true;
      man-db.enable =true;
      generateCaches = true;
    };
  };
}
