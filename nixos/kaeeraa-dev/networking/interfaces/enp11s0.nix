{
  networking.interfaces.enp11s0 = {
    wakeOnLan = {
      enable = true;
      policy = ["magic" "arp"];
    };
  };
}
