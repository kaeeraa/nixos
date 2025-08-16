{
  boot.initrd = {
    availableKernelModules = [
      "xhci_pci"
      "ahci"
      "usb_storage"
      "usbhid"
      "sd_mod"
      "ata_piix"
      "uhci_hcd"
      "virtio_pci"
      "sr_mod"
      "virtio_blk"
    ];
    kernelModules = ["kvm-amd"];
    supportedFilesystems = ["zfs"];
    network.enable = true;
  };
}
