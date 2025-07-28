{
  networking.interfaces = {
    wakeOnLan = {
      enable = true;
      policy = ["magic" "arp"];
    };
  };
}
