{
  pkgs,
  inputs,
  ...
}: {
  users.users = {
    kaeeraa = {
      enable = true;
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager" "doas"];
      hashedPassword = "$y$j9T$KnF5DX.ZKlSYfgoMyCjYR0$NISm9zSUgWBLzIEFKVZrNJsZBE/RhiGlVjmMt8fBJU3";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH40U4M9IIt9CjHtjQxkWXHhp6dQ3hHvGrOYca7RM7EB kaeeraa@kaeeraa-dev"
      ];
    };
    windstone = {
      enable = true;
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager" "doas"];
      hashedPassword = "$y$j9T$MDV8AS5BT3.sW9L4PddUW.$zMS0.cbH45fG0GlporXf9He0ubGTTfQzt8ilO0clAb3";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAG9vLzRoIqyiFTZ7pboRvMh822TMK5Lq64w+AUBI9+Y notwindstone@gmail.com"
      ];
    };
    root.hashedPassword = "$y$j9T$c/9C6B3uB1Q0uoSaE4qLD/$0m1OIPyUPqPu8nZrJrCwui1LANU1t.k2OMrZyqSYqlA";
    root.openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOiS+V5QMGDfHlKtBQzsIfvQA1Nb+sRpBH6mlFJepIpH kaeeraa@kaeeraa-dev"
    ];
  };
}
