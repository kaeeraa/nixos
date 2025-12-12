{...}: {
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,ru";
      variant = "workman,";
      options = "grp:alt_shift_toggle";
    };
    videoDrivers = ["nvidia"];
  };
}
