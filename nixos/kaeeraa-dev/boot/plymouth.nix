{pkgs, ...}: {
  boot.plymouth = {
    enable = true;
    theme = "catppuccin-latte";
    themePackages = [(pkgs.catppuccin-plymouth.override {variant = "latte";})];
  };
}
