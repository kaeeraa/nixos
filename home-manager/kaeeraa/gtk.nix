{pkgs, ...}: {
  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3";
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      name = "Adwaita-Icon-Theme";
      package = pkgs.adwaita-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Translucent";
      package = pkgs.bibata-cursors-translucent;
    };
  };
}
