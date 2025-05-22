{ pkgs, ... }:

{
  home.packages = with pkgs; [ pyprland ];

  xdg.configFile."hypr/pyprland.toml".source = ./pyprland.toml;
  xdg.configFile."hypr/scripts".source = ./scripts;

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = ",preferred,auto,1";

      # See https://wiki.hyprland.org/Configuring/Variables/
      input = {
        kb_layout = "us";
        kb_options = "ctrl:nocaps";
        follow_mouse = 1;
        sensitivity = 0;
        force_no_accel = 1;
        numlock_by_default = true;
        touchpad = {
          natural_scroll = "yes";
          disable_while_typing = true;
          tap-to-click = false;
        };
      };

      cursor = {
        hide_on_key_press = true;
        inactive_timeout = 0.5;
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
      };

      # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/
      dwindle = {
        pseudotile = "yes";
        preserve_split = "yes";
      };

      # See https://wiki.hyprland.org/Configuring/Master-Layout/
      master.new_status = "master";

      misc = {
        vrr = 0;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        force_default_wallpaper = 0;
      };

      xwayland.force_zero_scaling = true;

      exec-once = [
        "(sleep 5 && blueman-applet)"
        "(sleep 5 && megasync)"
        "clipse -listen"
        "hyprctl dispatch exec [workspace special silent] firefox"
        "hypridle"
        "nm-applet"
        "pcmanfm --daemon-mode"
        "pypr"
        "soteria"
        "swaync"
        "swayosd-server"
        "swww-daemon"
        "waybar"
      ];

      general = {
        gaps_in = 7;
        gaps_out = 15;
        border_size = 3;
        layout = "dwindle";
        resize_on_border = true;
        "col.active_border" = "rgba(a6a8adff) rgba(272a2cff) 45deg";
        "col.inactive_border" = "rgba(272a2cff) rgba(272a2cff) 45deg";
      };

      decoration = {
        rounding = 8;
        dim_special = 0.3;
        active_opacity = 1.0;
        inactive_opacity = 1.0;

        blur = {
          enabled = false;
          size = 10;
          passes = 3;
          new_optimizations = "on";
          ignore_opacity = "on";
          xray = false;
          special = true;
        };

        shadow = {
          enabled = true;
          # range = 10;
          # render_power = 1;
          # sharp = true;
          # ignore_window = true;
          # scale = 0.5;
        };
      };

      layerrule = [
        "ignorezero,notifications"
        "ignorezero,rofi"
        "ignorezero,swaync-control-center"
        "ignorezero,swaync-notification-window"

        "blur,notifications"
        "blur,rofi"
        "blur,swaync-control-center"
        "blur,swaync-notification-window"

        "animation [gnomed],swaync-control-center"
      ];

      # animation = NAME, ONOFF, SPEED, CURVE [,STYLE]
      animations = {
        enabled = 1;

        bezier = [
          "default, 0.16, 1, 0.3, 1"
        ];

        animation = [
          # styles: slide, popin, gnomed
          "windows, 1, 8, default, gnomed"
          "windowsIn, 1, 8, default, gnomed"
          "windowsOut, 1, 8, default, gnomed"
          "windowsMove, 1, 8, default, gnomed"

          # styles: slide, popin, fade
          "layers, 1, 5, default, popin"
          "layersIn, 1, 5, default, popin"
          "layersOut, 1, 5, default, popin"

          "fade, 1, 10, default"
          "fadeIn, 1, 10, default"
          "fadeOut, 1, 10, default"
          "fadeSwitch, 1, 10, default"
          "fadeShadow, 1, 10, default"
          "fadeDim, 1, 10, default"
          "fadeLayers, 1, 10, default"
          "fadeLayersIn, 1, 10, default"
          "fadeLayersOut, 1, 10, default"

           # styles: slide, slidevert, fade, slidefade, slidefadevert
          "workspaces, 1, 10, default, slidefade 80%"
          "workspacesIn, 1, 10, default, slidefade 80%"
          "workspacesOut, 1, 10, default, slidefade 80%"
          "specialWorkspace, 1, 10, default, slidefade 80%"
          "specialWorkspaceOut, 1, 10, default, slidefade 80%"
          "specialWorkspaceIn, 1, 10, default, slidefade 80%"

          # styles: once (default), loop
          "border, 0, 1, default"
          "borderangle, 0, 1, default, once"
        ];
      };

      "$mod" = "ALT";

      bind = [
        # scratchpads
        "$mod, t, exec, pypr toggle term"
        "$mod, e, exec, pypr toggle filemanager"
        "$mod CTRL, m, exec, pypr toggle music"

        # screenshots
        "$mod CTRL, s, exec, sh -c 'grim -g \"$(slurp)\" - | swappy -f -'"
        "$mod, s, exec, grim - | swappy -f -"

        # general binds
        "$mod, w, toggleFloating"
        "$mod, f, fullscreen"
        "$mod, q, killactive"

        # apps
        "$mod, a, exec, kitty --class pulsemixer pulsemixer"
        "$mod, c, exec, kitty --class clipse clipse"
        "$mod CTRL, p, exec, waypaper"

        # switch workspaces
        "$mod, 0, workspace, 0"
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"

        # move focus with $mod + hjkl
        "$mod, h, movefocus, l"
        "$mod, j, movefocus, d"
        "$mod, k, movefocus, u"
        "$mod, l, movefocus, r"

        # move focused window to a workspace silently
        # "$mod CTRL, 0, movetoworkspacesilent, 0"
        # "$mod CTRL, 1, movetoworkspacesilent, 1"
        # "$mod CTRL, 2, movetoworkspacesilent, 2"
        # "$mod CTRL, 3, movetoworkspacesilent, 3"
        # "$mod CTRL, 4, movetoworkspacesilent, 4"
        # "$mod CTRL, 5, movetoworkspacesilent, 5"
        # "$mod CTRL, 6, movetoworkspacesilent, 6"
        # "$mod CTRL, 7, movetoworkspacesilent, 7"
        # "$mod CTRL, 8, movetoworkspacesilent, 8"
        # "$mod CTRL, 9, movetoworkspacesilent, 9"

        # move focused window to a workspace
        "$mod SHIFT, 0, movetoworkspacesilent, 0"
        "$mod SHIFT, 1, movetoworkspacesilent, 1"
        "$mod SHIFT, 2, movetoworkspacesilent, 2"
        "$mod SHIFT, 3, movetoworkspacesilent, 3"
        "$mod SHIFT, 4, movetoworkspacesilent, 4"
        "$mod SHIFT, 5, movetoworkspacesilent, 5"
        "$mod SHIFT, 6, movetoworkspacesilent, 6"
        "$mod SHIFT, 7, movetoworkspacesilent, 7"
        "$mod SHIFT, 8, movetoworkspacesilent, 8"
        "$mod SHIFT, 9, movetoworkspacesilent, 9"

        # toggle waybar
        # "$mod, t, exec, kill -USR1 $(pgrep waybar)"
        "$mod CTRL, t, exec, pgrep waybar && kill $(pidof waybar) || waybar"

        # special workspace binds
        # "$mod SHIFT, s, movetoworkspacesilent, special"
        # "$mod, s, togglespecialworkspace"

        # applications shortcuts
        "$mod, Return, exec, kitty"
        "$mod, b, exec, firefox"
        "$mod, p, exec, rofi -show drun"
        "$mod, Escape, exec, hyprlock"
        "$mod SHIFT, e, exec, hyprctl dispatch exit"

        # move focused window
        "$mod CTRL, h, movewindow, l"
        "$mod CTRL, j, movewindow, d"
        "$mod CTRL, k, movewindow, u"
        "$mod CTRL, l, movewindow, r"

        # other menus
        "$mod CTRL, b, exec, ~/.config/rofi/scripts/book.sh"

        # scripts
        "$mod CTRL, a, exec, ~/.config/hypr/scripts/toggle_focus_mode.sh"
        "$mod SHIFT, i, exec, ~/.config/hypr/scripts/gaps_control.sh i"
        "$mod SHIFT, u, exec, ~/.config/hypr/scripts/gaps_control.sh "
      ];

      bindm = [
        # move/resize windows with $mod + LMB/RMB and dragging
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      bindl = [
        # media managment (requires playerctl)
        ",XF86AudioNext, exec, playerctl next"
        ",XF86AudioPause, exec, playerctl play-pause"
        ",XF86AudioPlay, exec, playerctl play-pause"
        ",XF86AudioPrev, exec, playerctl previous"
      ];

      bindel = [
        # laptop multimedia keys for volume and LCD brightness
        ",XF86AudioRaiseVolume, exec, swayosd-client --output-volume raise"
        "$mod, i, exec, swayosd-client --output-volume raise"
        ",XF86AudioLowerVolume, exec, swayosd-client --output-volume lower"
        "$mod, u, exec, swayosd-client --output-volume lower"
        ",XF86AudioMute, exec, swayosd-client --output-volume mute-toggle"
        "$mod, m, exec, swayosd-client --output-volume mute-toggle"

        ",XF86AudioMicMute, exec, swayosd-client --input-volume mute-toggle"
        "$mod, n, exec, swayosd-client --input-volume mute-toggle"
        "$mod CTRL, i, exec, swayosd-client --input-volume raise"
        "$mod CTRL, u, exec, swayosd-client --input-volume lower"

        ",XF86MonBrightnessUp, exec, swayosd-client --brightness raise"
        ",XF86MonBrightnessDown, exec, swayosd-client --brightness lower"
      ];

      binde = [
        # resize windows
        "$mod SHIFT, h, resizeactive, -30 0"
        "$mod SHIFT, j, resizeactive, 0 30"
        "$mod SHIFT, k, resizeactive, 0 -30"
        "$mod SHIFT, l, resizeactive, 30 0"
      ];

      windowrulev2 = [
        "float,class:(clipse)"
        "float,class:(finder)"
        "float,class:(swayimg)"
        "float,title:^(About Mozilla Firefox)$"
        "float,class:^(firefox)$,title:^(Picture-in-Picture)$"
        "float,class:^(firefox)$,title:^(Library)$"
        "float,class:^(kitty)$,title:^(top)$"
        "float,class:^(kitty)$,title:^(btop)$"
        "float,class:^(kitty)$,title:^(htop)$"
        "float,class:^(vlc)$"
        "float,class:^(kvantummanager)$"
        "float,class:^(qt5ct)$"
        "float,class:^(qt6ct)$"
        "float,class:^(nwg-look)$"
        "float,class:^(org.kde.ark)$"
        "float,class:^(org.pulseaudio.pavucontrol)$"
        "float,class:^(blueman-manager)$"
        "float,class:^(.blueman-manager-wrapped)$"
        "float,class:^(nm-applet)$"
        "float,class:^(nm-connection-editor)$"
        "float,class:^(org.kde.polkit-kde-authentication-agent-1)$"
        "float,class:^(Signal)$"
        "float,class:^(com.github.rafostar.Clapper)$"
        "float,class:^(app.drey.Warp)$"
        "float,class:^(net.davidotek.pupgui2)$"
        "float,class:^(yad)$"
        "float,class:^(eog)$"
        "float,class:^(io.github.alainm23.planify)$"
        "float,class:^(io.gitlab.theevilskeleton.Upscaler)$"
        "float,class:^(com.github.unrud.VideoDownloader)$"
        "float,class:^(io.gitlab.adhami3310.Impression)$"
        "float,class:^(io.missioncenter.MissionCenter)$"
        "float,class:^(xdg-desktop-portal-gtk)$"
        "float,class:^(pulsemixer)$"
        "float,class:^(post-finder)$"
        "float,title:^(Removable medium is inserted)$,class:^(pcmanfm)$"
        "float,title:((.*)Syncthing Tray(.*))"
        "float,class:^(waypaper)$"
        "float,class:^(fastfetch)$"
        "float,class:^(mpv)$"

        "size 800 800,class:(swayimg)"
        "size 1280 720,class:(mpv)"
        "size 800 800,class:(swayimg)"
        "size 620 650,class:^(clipse)$"
        "size 800 800,class:^(waypaper)$"
        "size 1000 400,class:^(finder)$"
        "size 1250 830,class:^(post-finder)$"
        "size 620 350,class:^(pulsemixer)$"
        "size 830 630,title:((.*)Syncthing Tray(.*))"
        "size 1000 450,class:(fastfetch)"
      ];

      windowrule = [
        "float,class:^(nz.co.mega.)$"
        "float,title:^(Open)$"
        "float,title:^(Choose Files)$"
        "float,title:^(Save As)$"
        "float,title:^(Confirm to replace files)$"
        "float,title:^(File Operation Progress)$"
      ];

      # https://wiki.hyprland.org/Configuring/Environment-variables/
      env = [
        "QT_SCALE_FACTOR=1"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"

        "XDG_SESSION_DESKTOP,Hyprland"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
      ];
    };
  };

  home.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1"; # If your cursor becomes invisible
    NIXOS_OZONE_WL = "1";          # Hint electron apps to use wayland
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
    config.common.default = "*";
  };
}
