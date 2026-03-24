{
  imports = [
    ./cpu/amd.nix
    ./display
    ./bluetooth
    ./graphics.nix
    ./nvidia.nix
    ./i2c.nix
  ];

  hardware.enableAllFirmware = true;
}
