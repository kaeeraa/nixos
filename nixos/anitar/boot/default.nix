{pkgs, ...}: {
  imports = [
    ./initrd.nix
    ./tmp.nix
    ./loader
    ./zfs.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_6_12;
  };
}
