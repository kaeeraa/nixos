{
  services.i2pd = {
    enable = false;
    address = "127.0.0.1";
    enableIPv6 = true;
    proto = {
      http.enable = true;
      socksProxy.enable = true;
      httpProxy.enable = true;
      sam.enable = true;
    };
  };
}
