{
  imports = [
    ./cpu/amd.nix
    ./display
    ./bluetooth
    ./graphics.nix
    ./nvidia.nix
  ];

  hardware.enableAllFirmware = true;
}
