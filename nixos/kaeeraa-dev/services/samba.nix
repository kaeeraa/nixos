{ services.samba = {
    enable = true;
    openFirewall = true;
    settings = {
      "global" = {
        "server string" = "NixOS-SMB";
        workgroup = "WORKGROUP";
        security = "user";
        "map to guest" = "Bad User";
   }; };

    shares = {
      rom = {
        path = "/mnt/rom";
        browseable = true;
        readOnly = false;
        guestOk = true;
      };
    };
  };
}
