{ ... }:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/plain" = [ "nvim.desktop" ];
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/*" = [ "swayimg.desktop" ];
      "video/*" = [ "mpv.desktop" ];
    };
  };
}
