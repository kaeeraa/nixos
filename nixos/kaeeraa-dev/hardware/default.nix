{
  imports = [
    ./cpu/intel.nix
    ./display
    ./bluetooth
    ./graphics.nix
    ./nvidia.nix
  ];

  hardware.enableAllFirmware = true;
}
