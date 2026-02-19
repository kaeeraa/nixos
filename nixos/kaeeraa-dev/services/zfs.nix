{
  services.zfs = {
    trim = {
      enable = true;
      interval = "weekly";
    };

    autoScrub = {
      enable = true;
      pools = ["tank"];
      interval = "monthly";
    };

    autoSnapshot = {
      enable = true;

      frequent = 8;
      hourly = 24;
      daily = 7;
      weekly = 4;
      monthly = 3;

      flags = "-k -p";
    };
  };
}
