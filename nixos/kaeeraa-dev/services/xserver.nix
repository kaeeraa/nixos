{
  lib,
  pkgs,
  ...
}: {
  services.xserver = {
    enable = true;

    xkb.layout = "us,ru";
    xkb.variant = "workman,";
    xkb.options = "grp:alt_shift_toggle";

    windowManager.bspwm = {
      enable = true;
    };

    displayManager.sessionCommands = ''
      ${lib.getBin pkgs.xorg.xrandr}/bin/xrandr --output DP-0 --mode 1920x1080 --rate 165
      ${lib.getBin pkgs.xorg.xrandr}/bin/xrandr --output DVI-D-0 --mode 1920x1080 --rate 60 --right-of DP-0
    '';

    videoDrivers = ["nvidia"];
  };
}
