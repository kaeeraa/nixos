{
  services.openssh = {
    enable = true;
    startWhenNeeded = true;
    hostKeys = [
      {
        path = "/etc/ssh/self_ed25519";
        type = "ed25519";
      }
    ];
    settings = {
      LogLevel = "VERBOSE";
      PasswordAuthentication = false;
    };
  };
}
