{ ... }:

{
  programs.swayimg = {
    enable = true;
    settings = {
      viewer = {
        window = "#10000010";
        scale = "fill";
      };
      font = {
        name = "CaskaydiaCove Nerd Font";
        size = 14;
      };
      info = {
        show = "no";
      };
    };
  };
}
