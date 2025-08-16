{
  imports = [
    ./firewall.nix
    ./networkmanager.nix
    ./nftables.nix
  ];
  networking = {
    domain = "anime.tatar";
    hostName = "anitar";
    hostId = "be63afec";
    enableIPv6 = false;
  };
}
