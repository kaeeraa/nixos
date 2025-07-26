{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      catppuccin-sddm-corners
    ];
  };
}
