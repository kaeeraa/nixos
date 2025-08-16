{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./users.nix
    ./groups.nix
  ];

  users = {
    defaultUserShell = lib.mkForce pkgs.bash;
    mutableUsers = false;
  };
}
