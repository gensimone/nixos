{ ... }:

{
  programs.cmus = {
    enable = true;
    theme = "";
    extraConfig = "
# overall background and foreground color
set color_win_fg=default
set color_win_bg=default

# bottom status line
set color_statusline_fg=2
set color_statusline_bg=default

# bottom title line
set color_titleline_fg=2
set color_titleline_bg=default

# top title area
set color_win_title_fg=2
set color_win_title_bg=default
set color_win_title_attr=bold

# command-line colors
set color_cmdline_bg=default
set color_cmdline_fg=default
set color_error=1
set color_info=6

# separator of windows
# should be black
set color_separator=16

# unselected currently playing track's text
set color_win_cur=13

# active selection for currently playing track
set color_win_cur_sel_bg=default
set color_win_cur_sel_fg=3
set color_win_cur_sel_attr=underline

# inactive selection for currently playing track
set color_win_inactive_cur_sel_bg=default
set color_win_inactive_cur_sel_fg=13

# active selection
set color_win_sel_bg=default
set color_win_sel_fg=3
set color_win_sel_attr=underline

# inactive selection
set color_win_inactive_sel_bg=default
set color_win_inactive_sel_fg=1

# directory listing color
set color_win_dir=default
    ";
  };
}
