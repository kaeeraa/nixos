{pkgs, ...}: {
  imports = [
    ./initrd.nix
    ./tmp.nix
    ./loader
    ./zfs.nix
    ./kernel
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
