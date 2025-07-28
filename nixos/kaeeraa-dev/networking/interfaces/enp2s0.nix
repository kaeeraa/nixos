{
  networking.interfaces.enp2s0 = {
    wakeOnLan = {
      enable = true;
      policy = ["magic" "arp"];
    };
  };
}
