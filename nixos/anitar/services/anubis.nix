{
  services.anubis = {
    enable = true;
    instances.anitar = {
      enable = true;
      settings = {
        BIND = ":8923";
        BIND_NETWORK = "tcp";
        SERVE_ROBOTS_TXT = true;
        TARGET = "http://127.0.0.1:3000";
        WEBMASTER_EMAIL = "notwindstone@gmail.com";
      };
    };
  };
}
