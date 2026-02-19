{
  security.pam = {
    zfs = {
      enable = true;
      mountRecursively = true;
      homes = "zroot/home";
    };
  };
}
