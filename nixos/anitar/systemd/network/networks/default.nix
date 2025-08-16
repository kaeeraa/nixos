{
  imports = [./30-wan.nix];

  systemd.network = {
    enable = true;
  };
}
