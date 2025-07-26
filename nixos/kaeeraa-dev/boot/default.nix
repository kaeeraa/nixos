{pkgs, ...}: {
  imports = [
    ./initrd.nix
    ./tmp.nix
    ./plymouth.nix
    ./loader
    ./zfs.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
