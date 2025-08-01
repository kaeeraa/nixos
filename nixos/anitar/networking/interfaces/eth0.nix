{
  networking.interfaces.eth0 = {
    useDHCP = false;
    ipv4.addresses = [
      {
        address = "91.92.70.2";
        prefixLength = 32;
      }
    ];
    ipv4.routes = [
      {
        via = "91.92.70.1";
        options = {onlink = true;};
      }
    ];
  };
}
