{
  config,
  lib,
  ...
}: {
  imports = [
    ./home
    ./services
    ./dconf.nix
    ./xdg.nix
  ];
}
