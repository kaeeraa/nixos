{
  systemd.network.networks."30-wan" = {
    matchConfig.Name = "ens3";
    networkConfig.DHCP = "no";
    address = [
      "193.23.221.254/32"
    ];
    routes = [
      {
        Gateway = "10.0.0.1";
        GatewayOnLink = true;
      }
    ];
  };
}
