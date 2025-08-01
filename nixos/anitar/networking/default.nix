{
  imports = [
    ./firewall.nix
    ./networkmanager.nix
    ./nftables.nix
    ./interfaces
  ];
  networking = {
    domain = "anime.tatar";
    hostName = "anitar";
    hostId = "be63afec";
    enableIPv6 = false;
  };
}
