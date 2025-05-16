{ ... }:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/plain" = [ "nvim.desktop" ];
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/png" = [ "swayimg.desktop" ];
      "image/jpeg" = [ "swayimg.desktop" ];
      "image/jpg" = [ "swayimg.desktop" ];
      "video/*" = [ "mpv.desktop" ];
    };
  };
}
