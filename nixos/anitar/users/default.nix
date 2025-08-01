{pkgs, ...}: {
  imports = [
    ./users.nix
    ./groups.nix
  ];

  users = {
    defaultUserShell = pkgs.zsh;
    mutableUsers = false;
  };
}
