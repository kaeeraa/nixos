{
  config,
  pkgs,
  ...
}: let
  colors = config.ayuMirage.colors;
in {
  xsession.windowManager.bspwm = {
    enable = true;

    monitors = {
      DP-4 = ["2" "4" "5" "8" "0"];
      DVI-D-0 = ["1" "3" "6" "7" "9"];
    };

    settings = {
      border-width = 2;
      window-gap = 8;
      split-ratio = 0.5;
      borderless-monocle = true;
      gapless-monocle = true;

      normal_border_color = colors.base03;
      focused_border_color = colors.base08;
      active_border_color = colors.base0E;

      focus_follows_pointer = true;
    };

    startupPrograms = [
      "${pkgs.feh}/bin/feh --bg-fill ~/Pictures/Wallpapers/nixos-wallpaper.png"
      "${pkgs.dunst}/bin/dunst"
      "${pkgs.xorg.xrandr}/bin/xrandr --output DP-4 --mode 1920x1080 --rate 165 --primary --left-of DVI-D-0"
      "${pkgs.xorg.xrandr}/bin/xrandr --output DVI-D-0 --mode 1920x1080 --rate 60 --right-of DP-4"
    ];

    rules = {
      "GtkFileChooserDialog" = {state = "floating";};
      "confirm" = {state = "floating";};
      "dialog" = {state = "floating";};
      "download" = {state = "floating";};
      "error" = {state = "floating";};
      "file_progress" = {state = "floating";};
      "notification" = {state = "floating";};
      "splash" = {state = "floating";};
      "toolbar" = {state = "floating";};
    };
  };
}
