{ config, lib, pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;
    settings = lib.mkDefault {
      general = {
        disable_loading_bar = true;
        grace = 300;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          monitor = "";
          size = "200, 50";
          dots_center = true;
          fade_on_empty = false;
          outline_thickness = 5;
          placeholder_text = "";
          position = "0, -80";
          shadow_passes = 2;
        }
      ];
    };
  };
}
