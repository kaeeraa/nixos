{pkgs, ...}: {
  imports = [./fontconfig.nix];

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      jetbrains-mono
      (nerdfonts.override {fonts = ["JetBrainsMono"];})
      material-design-icons
    ];
  };
}
