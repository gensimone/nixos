{ ... }:

{
  programs.nvf.settings.vim.notify = {
    nvim-notify = {
      enable = true;
      setupOpts = {
        position = "top_right"; # top_left, top_right, bottom_left, bottom_right
        render = "default"; # minimal, default, simple, compact, wrapped-compact
        stages = "static"; # fade_in_slide_out, fade, slide, static
        timeout = 2000;
      };
    };
  };
}
