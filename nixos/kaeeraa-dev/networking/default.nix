{
  imports = [
    ./firewall.nix
    ./networkmanager.nix
    ./nftables.nix
    ./stevenblack.nix
    ./interfaces
  ];
  networking = {
    domain = "kaeeraa.dev";
    hostName = "kaeeraa-dev";
    hostId = "ae23ffbc";
    enableIPv6 = true;
  };
}
