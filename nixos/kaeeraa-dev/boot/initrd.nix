{
  boot.initrd = {
    availableKernelModules = ["xhci_pci" "xhci_hcd" "ahci" "usb_storage" "usbhid" "sd_mod" "hid_generic" "usbcore" "vfio_pci" "vfio" "vfio_iommu_type1"];
    kernelModules = ["kvm-amd" "vfio" "vfio_pci" "vfio_iommu_type1"];
    supportedFilesystems = ["zfs"];
    network.enable = true;
  };
}
