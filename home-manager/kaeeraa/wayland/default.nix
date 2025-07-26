{
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # i wont use wayland anymore until:
    #   - ill switch gpu
    #     or
    #   - wayland will support proprietary nvidia drivers
    #     or
    #   - nouveau will support Nvidia GTX 1070
    # ./windowManager/sway.nix
  ];
}
