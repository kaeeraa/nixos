{
  hostName,
  lib,
  ...
}: {
  imports =
    [
      ./home
      ./programs
      ./services
      ./gtk.nix
      ./dconf.nix
      ./xdg.nix
      ./nixpkgs
      ./qt.nix
    ]
    ++ lib.optional (hostName == "kaeeraa-dev") ./wayland;
}
