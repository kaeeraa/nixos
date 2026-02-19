{
  services.udev = {
    enable = true;
    extraRules = ''
      SUBSYSTEM=="powercap", GROUP="power", MODE="0440"
      SUBSYSTEM=="hwmon", KERNEL=="hwmon*", GROUP="power", MODE="0440"
    '';
  };
}
