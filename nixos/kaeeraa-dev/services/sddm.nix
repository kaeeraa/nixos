{ pkgs, ... }: {
  services.displayManager.sddm = {
    enable = true;
    theme = "catppuccin-latte-red";
    package = pkgs.kdePackages.sddm;
  };
}
