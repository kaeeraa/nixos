{config, ...}: let
  colors = config.catppuccin.colors;
in {
  services.picom = {
    enable = true;
    fade = true;
    fadeDelta = 5;
    shadow = true;
    shadowOpacity = 0.2;
    settings = {
      corner-radius = 8;
      rounded-corners-exclude = ["class_g = 'Polybar'"];
      shadow-color = "#${colors.lavender}20";
      shadow-radius = 15;
      shadow-offset-x = -7;
      shadow-offset-y = -7;
      backend = "glx";
      vsync = true;
    };
  };
}
