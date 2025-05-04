{ ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "Fira Code Nerd Font";
      size = 11;
    };
    themeFile = "Nord";
    settings = {
      confirm_os_window_close = 0;
      copy_on_selct = true;
      cursor_blink_interval = 0.5;
      cursor_shape = "beam";
      cursor_shape_unfocused = "hollow";
      enable_audio_bell = false;
      mouse_hide_wait = 0.5;
      scrollback_indicator_opacity = 0.0;
      strip_trailing_spaces = "smart";
      window_padding_width = 10;
    };
  };
}
