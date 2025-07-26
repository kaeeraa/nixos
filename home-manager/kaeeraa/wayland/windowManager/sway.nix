{
  lib,
  config,
  pkgs,
  ...
}: let
  # Sway
  cfg = config.wayland.windowManager.sway;
  modifier = cfg.config.modifier;
  swayPackages = with pkgs; [
    foot
    dunst
    nwg-panel
    brightnessctl
    wl-clipboard
    slurp
  ];
in {
  wayland.windowManager.sway = {
    enable = true;
    config = {
      bars = [{"command" = "${pkgs.nwg-panel}/bin/nwg-panel";}];
      modifier = "Mod4";
      terminal = "foot";
      menu = "fuzzel";
      keybindings = lib.mkOptionDefault {"${modifier}+q" = "kill";};
    };
  };
}
