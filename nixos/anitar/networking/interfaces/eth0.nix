{
  networking.interfaces.eth0 = {
    useDHCP = false;
    ipv4.addresses = [
      {
        address = "91.92.70.2";
        prefixLenght = 32;
      }
    ];
    ipv4.routes = [
      {
        to = "default";
        via = "91.92.70.1";
        options = {onlink = true;};
      }
    ];
  };
}
