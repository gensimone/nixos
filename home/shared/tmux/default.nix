{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    mouse = true;
    shell = "${pkgs.bash}/bin/bash";
    prefix = "C-b";
    keyMode = "vi";
    clock24 = true;
    terminal = "screen-256color";
    baseIndex = 1;
    historyLimit = 5000;

    # address vim mode switching delay (http://superuser.com/a/252717/65504)
    escapeTime = 0;

    # Automatically spawn a session if trying to attach and none are running.
    newSession = false;

    # Store tmux socket under /run, which is more secure than /tmp,
    # but as a downside it doesn't survive user logout.
    secureSocket = true;

    # plugins = with pkgs.tmuxPlugins; [
    #   {
    #     plugin = gruvbox;
    #     extraConfig = ''
    #       set -g @tmux-gruvbox 'dark"
    #       set -g @tmux-gruvbox-statusbar-alpha "true"
    #       set -g @tmux-gruvbox-left-status-a "#S"
    #       set -g @tmux-gruvbox-right-status-x ""
    #       set -g @tmux-gruvbox-right-status-y ""
    #       set -g @tmux-gruvbox-right-status-z ""
    #     '';
    #   }
    # ];

    extraConfig = ''
      # status bar settings
      set -g status-right ""
      set -g status-left " "
      set -g status-position bottom
      # set -g status-justify centre
      set -g status-style bg=black
      set -g status-style fg=black
      setw -g window-status-current-style fg=green,bold,bg="#282828"
      setw -g window-status-current-format "#I #W "
      setw -g window-status-style fg=black,bg="#282828"
      setw -g window-status-format "#I #W "

      # automatically reset tmux window indexes
      set -g renumber-window on

      # clipboard
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

      # open panes in current directory
      bind '"' split-window -v -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"

      # split panes
      bind h split-window -h
      bind v split-window -v
    '';
  };
}
