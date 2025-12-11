{
  hostName,
  lib,
  ...
}: {
  imports =
    [
      ./colors.nix
      ./home
      ./programs
      ./services
      ./gtk.nix
      ./dconf.nix
      ./xdg.nix
      ./xresources.nix
      ./nixpkgs
    ]
    ++ lib.optional (hostName == "kaeeraa-dev") ./xsession;
}
