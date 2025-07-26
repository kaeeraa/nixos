{config, ...}: let
  colors = config.catppuccin.colors;
in {
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };
    settings = {
      background = colors.base;
      foreground = colors.text;
      selection_background = colors.lavender;
      selection_foreground = colors.base;
      url_color = colors.blue;

      color0 = "#5c5f77";
      color1 = colors.red;
      color2 = colors.green;
      color3 = colors.yellow;
      color4 = colors.blue;
      color5 = colors.pink;
      color6 = colors.teal;
      color7 = "#acb0be";

      color8 = "#6c6f85";
      color9 = "#de293e";
      color10 = "#49af3d";
      color11 = "#eea02d";
      color12 = "#456eff";
      color13 = "#fe85d8";
      color14 = "#2d9fa8";
      color15 = "#bcc0cc";

      confirm_os_window_close = 0;
    };
  };
}
