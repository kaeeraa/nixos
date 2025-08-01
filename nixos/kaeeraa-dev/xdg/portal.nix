{ pkgs, ... }: {
  xdg.portal = {
    enable = true;
    config = {
      common.default = [
        "gtk"
      ];
    };
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      kdePackages.xdg-desktop-portal-kde
    ];
  };
}
