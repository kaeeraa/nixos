{pkgs, ...}: {
  imports = [
    ./users.nix
    ./groups.nix
  ];

  users = {
    defaultUserShell = pkgs.fish;
    mutableUsers = false;
  };
}
