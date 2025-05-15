{ ... }:

{
  programs.nvf.settings.vim.notify = {
    nvim-notify = {
      enable = true;
      setupOpts = {
        # top_left, top_right, bottom_left, bottom_right
        position = "top_right";
        # minimal, default, simple, compact, wrapped-compact
        render = "default";
        # fade_in_slide_out, fade, slide, static
        stages = "static";
        timeout = 1000;
      };
    };
  };
}
