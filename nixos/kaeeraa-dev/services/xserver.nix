{
  services.xserver = {
    enable = true;

    xkb.layout = "us,ru";
    xkb.variant = "workman,";
    xkb.options = "grp:alt_shift_toggle";

    displayManager.sddm = {
      enable = true;
      theme = "catppucin-sddm-corners";
    };

    windowManager.bspwm = {
      enable = true;
    };

    videoDrivers = ["nvidia"];
  };
}
