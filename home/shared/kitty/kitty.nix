{ ... }:

{
  xdg.configFile."kitty/themes".source = ./themes;

  programs.kitty = {
    enable = true;
    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 11;
    };
    themeFile = "GruvboxMaterialDarkMedium";
    settings = {
      confirm_os_window_close = 0;
      copy_on_select = true;
      cursor_blink_interval = 0.5;
      cursor_shape = "beam";
      cursor_shape_unfocused = "hollow";
      enable_audio_bell = false;
      mouse_hide_wait = 0.5;
      scrollback_indicator_opacity = 0.0;
      strip_trailing_spaces = "smart";
      background_opacity = 0.96;
      window_padding_width = 10;
    };
  };
}
