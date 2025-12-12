{
  services.autorandr = {
    enable = true;
    profiles = {
      "main".config = {
        DP-0 = {
          enable = true;
          primary = true;
          mode = "1920x1080";
          rate = 165;
          position = "0x0";
        };
        DVI-D-0 = {
          enable = true;
          mode = "1920x1080";
          rate = 60;
          position = "1920x0";
        };
      };
    };
  };
}
