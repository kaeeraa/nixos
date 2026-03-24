{
  pkgs,
  lib,
  config,
  ...
}: let
  zfsCompatibleKernelPackages =
    lib.filterAttrs (
      name: kernelPackages:
        (builtins.match "linux_[0-9]+_[0-9]+" name)
        != null
        && (builtins.tryEval kernelPackages).success
        && (!kernelPackages.${config.boot.zfs.package.kernelModuleAttribute}.meta.broken)
    )
    pkgs.linuxKernel.packages;
  latestKernelPackage = lib.last (
    lib.sort (a: b: (lib.versionOlder a.kernel.version b.kernel.version)) (
      builtins.attrValues zfsCompatibleKernelPackages
    )
  );
in {
  imports = [
    ./initrd.nix
    ./tmp.nix
    ./loader
    #./zfs.nix
    ./kernel
  ];

  boot = {
    # blacklistedKernelModules = [ "k10temp" ];
    # extraModulePackages = [ config.boot.kernelPackages.zenpower ];
    kernelModules = [
      "nvidia"
      "nvidia_modeset"
      "nvidia_uvm"
      "nvidia_drm"
    ];
    kernelPackages = latestKernelPackage;
    kernelParams = ["usbcore.quirks=5566:0008:gki" "nvidia-drm.modeset=1" "nvidia-drm.useDisplayDevice=none" "reboot=pci" "acpi=force" "usbcore.autosuspend=-1" "amd_iommu=on"];
  };
}
