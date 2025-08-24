{
  networking.firewall = {
    enable = true;

    allowPing = true;
    pingLimit = "2/second";
    allowedTCPPorts = [
      22
      7656
      7070
      4447
      4444
    ];
  };
}
