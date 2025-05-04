# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
# (This doesn't seem to work)
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "desktop/wm/keybindings" = {
      activate-window-menu = [];
      begin-move = [];
      begin-resize = [];
      close = [ "<Alt>q" ];
      cycle-group = [];
      cycle-group-backward = [];
      cycle-panels = [];
      cycle-panels-backward = [];
      cycle-windows = [];
      cycle-windows-backward = [];
      lower = [];
      maximize = [];
      maximize-horizontally = [];
      minimize = [ "<Alt>v" ];
      move-to-monitor-down = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [];
      move-to-workspace-1 = [ "<Shift><Alt>1" ];
      move-to-workspace-2 = [ "<Shift><Alt>2" ];
      move-to-workspace-3 = [ "<Shift><Alt>3" ];
      move-to-workspace-4 = [ "<Shift><Alt>4" ];
      move-to-workspace-last = [];
      move-to-workspace-left = [];
      move-to-workspace-right = [];
      panel-run-dialog = [];
      show-desktop = [ "<Alt>d" ];
      switch-applications = [ "<Alt>Tab" ];
      switch-applications-backward = [ "<Shift><Alt>Tab" ];
      switch-group = [];
      switch-group-backward = [];
      switch-input-source = [];
      switch-input-source-backward = [];
      switch-panels = [];
      switch-panels-backward = [];
      switch-to-workspace-1 = [ "<Alt>1" ];
      switch-to-workspace-2 = [ "<Alt>2" ];
      switch-to-workspace-3 = [ "<Alt>3" ];
      switch-to-workspace-4 = [ "<Alt>4" ];
      switch-to-workspace-last = [];
      switch-to-workspace-left = [];
      switch-to-workspace-right = [];
      switch-windows = [];
      switch-windows-backward = [];
      toggle-fullscreen = [ "<Alt>f" ];
      toggle-maximized = [];
      unmaximize = [];
    };

    "mutter/keybindings" = {
      toggle-tiled-left = [ "<Alt>h" ];
      toggle-tiled-right = [ "<Alt>l" ];
    };

    "mutter/wayland/keybindings" = {
      restore-shortcuts = [];
    };

    "settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" ];
      help = [];
      logout = [ "<Shift><Alt>e" ];
      magnifier = [];
      magnifier-zoom-in = [];
      magnifier-zoom-out = [];
      screenreader = [];
      screensaver = [ "<Alt>Escape" ];
      volume-down = [ "<Alt>u" ];
      volume-mute = [ "<Alt>m" ];
      volume-up = [ "<Alt>i" ];
    };

    "settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Alt>Return";
      command = "kitty";
      name = "Terminal";
    };

    "settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Alt>b";
      command = "firefox";
      name = "Browser";
    };

    "settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Alt>e";
      command = "nautilus";
      name = "File Manager";
    };

    "shell/keybindings" = {
      screenshot = [];
      screenshot-window = [];
      show-screen-recording-ui = [];
      show-screenshot-ui = [];
      toggle-application-view = [];
      toggle-message-tray = [];
      toggle-overview = [];
      toggle-quick-settings = [];
    };
  };
}
