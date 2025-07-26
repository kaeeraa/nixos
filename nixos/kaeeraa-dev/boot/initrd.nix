{
  boot.initrd = {
    availableKernelModules = ["xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod"];
    kernelModules = ["kvm-intel"];
    supportedFilesystems = ["zfs"];
    network.enable = true;
  };
}
