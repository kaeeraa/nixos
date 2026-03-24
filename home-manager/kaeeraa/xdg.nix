{
  pkgs,
  config,
  inputs,
  ...
}: {
  xdg = {
    enable = true;
    autostart.enable = true;
    portal = {
      enable = true;
      extraPortals = with pkgs; [xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk];
      xdgOpenUsePortal = true;
      configPackages = [inputs.mango.packages."x86_64-linux".mango];
      config = {
        mango = {
          default = ["gtk"];
          "org.freedesktop.impl.portal.Secret" = ["gnome-keyring"];
          "org.freedesktop.impl.portal.ScreenCast" = ["wlr"];
          "org.freedesktop.impl.portal.ScreenShot" = ["wlr"];

          # wlr does not have this interface
          "org.freedesktop.impl.portal.Inhibit" = [];
        };
      };
    };
    userDirs = {
      enable = true;
      desktop = "${config.home.homeDirectory}/Desktop";
      documents = "${config.home.homeDirectory}/Documents";
      download = "${config.home.homeDirectory}/Download";
      music = "${config.home.homeDirectory}/Music";
      pictures = "${config.home.homeDirectory}/Pictures";
      videos = "${config.home.homeDirectory}/Videos";
    };
  };
}
