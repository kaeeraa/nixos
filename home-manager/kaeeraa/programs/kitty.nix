{config, ...}: let
  colors = config.ayuMirage.colors;
in {
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };
    settings = {
      background = colors.base00;
      foreground = colors.base05;
      selection_background = colors.base0E;
      selection_foreground = colors.base07;
      url_color = colors.base0D;

      color0 = colors.base00;
      color1 = colors.base08;
      color2 = colors.base0B;
      color3 = colors.base0A;
      color4 = colors.base0D;
      color5 = colors.base0F;
      color6 = colors.base0C;
      color7 = colors.base05;
      color8 = colors.base03;
      color9 = colors.base08;
      color10 = colors.base0B;
      color11 = colors.base0A;
      color12 = colors.base0D;
      color13 = colors.base0F;
      color14 = colors.base0C;
      color15 = colors.base07;

      confirm_os_window_close = 0;
    };
  };
}
