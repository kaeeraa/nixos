{ pkgs, ... }: {
  services.displayManager.sddm = {
    enable = true;
    theme = "Elegant-sddm";
    package = pkgs.kdePackages.sddm;
  };
}
