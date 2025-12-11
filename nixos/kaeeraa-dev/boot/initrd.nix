{
  boot.initrd = {
    availableKernelModules = ["xhci_pci" "xhci_hcd" "ahci" "usb_storage" "usbhid" "sd_mod" "hid_generic" "usbcore"];
    kernelModules = ["kvm-amd"];
    supportedFilesystems = ["zfs"];
    network.enable = true;
  };
}
