{
  config,
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
    ]
    ++ lib.mkIf (config.networking.hostname == "kaeeraa-dev") [
      ./xsession
    ];
}
