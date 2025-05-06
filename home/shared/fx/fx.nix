{ ... }:

{
  home.packages = with pkgs; [ felix-fm ];
  xdg.configFile."felix/config.yaml".source = ./config.jsonc;
}
