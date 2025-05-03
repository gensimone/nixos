{ ... }:

{
  xdg.mimeApps = {
    defaultApplications = {
      "text/plain" = [ "neovim.desktop" ];
      "application/pdf" = [ "zathura.desktop" ];
      "image/*" = [ "swayimg.desktop" ];
      "video/*" = [ "mpv.desktop" ];
    };
  };
}
