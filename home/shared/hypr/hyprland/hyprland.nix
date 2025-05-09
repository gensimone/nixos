{ config, pkgs, ... }:

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
        "hyprctl dispatch exec [workspace special silent] firefox"
        "clipse -listen"
        "hypridle"
        "mako"
        "nm-applet"
        "pypr"
        "soteria"
        "swayosd-server"
        "swww-daemon"
        "waybar"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 4;
        layout = "dwindle";
        resize_on_border = true;
        "col.active_border" = "rgba(649264ff) rgba(272a2cff) 45deg";
        "col.inactive_border" = "rgba(272a2cff) rgba(272a2cff) 45deg";
      };

      decoration = {
        rounding = 10;
        dim_special = 0.3;
        active_opacity = 0.95;
        inactive_opacity = 0.9;

        blur = {
          enabled = true;
          size = 6;
          passes = 3;
          new_optimizations = "on";
          ignore_opacity = "on";
          xray = false;
          special = true;
        };

        shadow = {
          enabled = true;
        };
      };

      layerrule = [
        "noanim, hypicker"
        "noanim, selection"
        "blur,waybar"
        "blur,rofi"
        "ignorezero,rofi"
        "blur,notifications"
        "ignorezero,notifications"
        "blur,swaync-notification-window"
        "ignorezero,swaync-notification-window"
        "blur,swaync-control-center"
        "ignorezero,swaync-control-center"
        "blur,logout_dialog"
      ];

      animations = {
        enabled = 1;
        bezier = [
          "default, 0.05, 0.9, 0.1, 1.05"
          "wind, 0.05, 0.9, 0.1, 1.05"
          "overshot, 0.13, 0.99, 0.29, 1.08"
          "liner, 1, 1, 1, 1"
        ];
        animation = [
          "windows, 1, 7, wind, popin"
          "windowsIn, 1, 7, overshot, popin"
          "windowsOut, 1, 5, overshot, popin"
          "windowsMove, 1, 6, overshot, slide"
          "layers, 1, 5, default, popin"
          "fadeIn, 1, 10, default"
          "fadeOut, 1, 10, default"
          "fadeSwitch, 1, 10, default"
          "fadeShadow, 1, 10, default"
          "fadeDim, 1, 10, default"
          "fadeLayers, 1, 10, default"
          "workspaces, 1, 7, overshot, slidevert"
          "border, 1, 1, liner"
          "borderangle, 1, 30, liner"
        ];
      };

      "$mod" = "ALT";

      bind = [
        # scratchpads
        "$mod, t, exec, pypr toggle term"
        "$mod, e, exec, pypr toggle filemanager"
        "$mod CTRL, m, exec, pypr toggle music"

        # general binds
        "$mod, w, toggleFloating"
        "$mod, f, fullscreen"
        "$mod, q, killactive"

        # apps
        "$mod, a, exec, kitty --class pulsemixer pulsemixer"
        "$mod, c, exec, kitty --class clipse clipse"

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
        "$mod CTRL, p, exec, ~/.config/rofi/scripts/wallset.sh"
        "$mod CTRL, b, exec, ~/.config/rofi/scripts/book.sh"

        # enable/disable animations
        "$mod CTRL, a, exec, ~/.config/hypr/scripts/toggle_animations.sh"
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
        "$mod, I, exec, swayosd-client --output-volume raise"
        ",XF86AudioLowerVolume, exec, swayosd-client --output-volume lower"
        "$mod, U, exec, swayosd-client --output-volume lower"
        ",XF86AudioMute, exec, swayosd-client --output-volume mute-toggle"
        "$mod, M, exec, swayosd-client --output-volume mute-toggle"
        ",XF86AudioMicMute, exec, swayosd-client --input-volume mute-toggle"
        "$mod, N, exec, swayosd-client --input-volume mute-toggle"
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
        "opacity 0.90 0.90,class:^(firefox)$"
        "opacity 0.90 0.90,class:^(Google-chrome)$"
        "opacity 0.90 0.90,class:^(Brave-browser)$"
        "opacity 0.80 0.80,class:^(code-oss)$"
        "opacity 0.80 0.80,class:^([Cc]ode)$"
        "opacity 0.80 0.80,class:^(code-url-handler)$"
        "opacity 0.80 0.80,class:^(code-insiders-url-handler)$"
        "opacity 0.85 0.85,class:^(kitty)$"
        "opacity 0.90 0.90,class:^(kitty-music)$"
        "opacity 0.90 0.90,class:^(kitty-filemanager)$"
        "opacity 0.90 0.90,class:^(kitty-dropterm)$"
        "opacity 0.70 0.70,class:^(pulsemixer)$"
        "opacity 0.80 0.80,class:^(org.kde.dolphin)$"
        "opacity 0.80 0.80,class:^(org.kde.ark)$"
        "opacity 0.80 0.80,class:^(nwg-look)$"
        "opacity 0.80 0.80,class:^(qt5ct)$"
        "opacity 0.80 0.80,class:^(qt6ct)$"
        "opacity 0.80 0.80,class:^(kvantummanager)$"
        "opacity 0.80 0.70,class:^(org.pulseaudio.pavucontrol)$"
        "opacity 0.80 0.70,class:^(blueman-manager)$"
        "opacity 0.80 0.70,class:^(.blueman-manager-wrapped)$"
        "opacity 0.80 0.70,class:^(nm-applet)$"
        "opacity 0.80 0.70,class:^(org.pwmt.zathura)$"
        "opacity 0.80 0.70,class:^(nm-connection-editor)$"
        "opacity 0.80 0.70,class:^(org.kde.polkit-kde-authentication-agent-1)$"
        "opacity 0.80 0.70,class:^(polkit-gnome-authentication-agent-1)$"
        "opacity 0.80 0.70,class:^(org.freedesktop.impl.portal.desktop.gtk)$"
        "opacity 0.80 0.70,class:^(org.freedesktop.impl.portal.desktop.hyprland)$"
        "opacity 0.70 0.70,class:^([Ss]team)$"
        "opacity 0.70 0.70,class:^(steamwebhelper)$"
        "opacity 0.70 0.70,class:^([Ss]potify)$"
        "opacity 0.70 0.70,initialTitle:^(Spotify Free)$"
        "opacity 0.70 0.70,initialTitle:^(Spotify Premium)$"
        "opacity 0.70 0.70,initialTitle:^(nz.co.mega.)$"
        "opacity 0.90 0.90,class:^(org.telegram.desktop)$"
        "opacity 0.90 0.90,class:^(com.github.rafostar.Clapper)$"
        "opacity 0.80 0.80,class:^(com.github.tchx84.Flatseal)$"
        "opacity 0.80 0.80,class:^(hu.kramo.Cartridges)$"
        "opacity 0.80 0.80,class:^(com.obsproject.Studio)$"
        "opacity 0.80 0.80,class:^(gnome-boxes)$ # Boxes-Gtk"
        "opacity 0.80 0.80,class:^(vesktop)$"
        "opacity 0.80 0.80,class:^(discord)$"
        "opacity 0.80 0.80,class:^(legcord)$"
        "opacity 0.80 0.80,class:^(WebCord)$"
        "opacity 0.80 0.80,class:^(ArmCord)$"
        "opacity 0.80 0.80,class:^(app.drey.Warp)$"
        "opacity 0.80 0.80,class:^(net.davidotek.pupgui2)$"
        "opacity 0.80 0.80,class:^(yad)$"
        "opacity 0.80 0.80,class:^(Signal)$"
        "opacity 0.80 0.80,class:^(io.github.alainm23.planify)$"
        "opacity 0.80 0.80,class:^(io.gitlab.theevilskeleton.Upscaler)$"
        "opacity 0.80 0.80,class:^(com.github.unrud.VideoDownloader)$"
        "opacity 0.80 0.80,class:^(io.gitlab.adhami3310.Impression)$"
        "opacity 0.80 0.80,class:^(io.missioncenter.MissionCenter)$"
        "opacity 0.80 0.80,class:^(io.github.flattool.Warehouse)$"
        "opacity 0.80 0.80,class:^(io.github.flattool.Warehouse)$"
        "opacity 0.90 0.90,class:^(clipse)$"

        "float,class:(clipse)"
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

        "size 620 650,class:^(clipse)$"
        "size 620 350,class:^(pulsemixer)$"
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
        "QT_QPA_PLATFORMTHEME,gtk"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"

        "XDG_SESSION_DESKTOP,Hyprland"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
      ];
    };
  };


  # https://github.com/meganz/MEGAsync/issues/710

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
