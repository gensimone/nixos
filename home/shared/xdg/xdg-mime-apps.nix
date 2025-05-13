{ ... }:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/plain" = [ "nvim.desktop" ];
      "applicaton/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/*" = [ "swayimg.desktop" ];
      "video/*" = [ "mpv.desktop" ];
    };
  };
}
