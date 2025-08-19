{pkgs, ...}: {
  imports = [
    ./initrd.nix
    ./tmp.nix
    ./loader
    ./zfs.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = ["usbcore.quirks=5566:0008:gki"];
  };
}
