{
  imports = [
    ./users.nix
    ./groups.nix
  ];

  users = {
    mutableUsers = false;
  };
}
