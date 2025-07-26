{
  services.xserver = {
    enable = true;

    xkb.layout = "us,ru";
    xkb.variant = "workman,";
    xkb.options = "grp:alt_shift_toggle";

    windowManager.bspwm = {
      enable = true;
    };

    videoDrivers = ["nvidia"];
  };
}
