{
  networking.firewall = {
    enable = true;

    allowPing = true;
    pingLimit = "2/second";
    allowedTCPPorts = [22 433];
  };
}
