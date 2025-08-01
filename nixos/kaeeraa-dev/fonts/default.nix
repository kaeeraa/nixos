{pkgs, ...}: {
  imports = [./fontconfig.nix];

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      jetbrains-mono
      nerd-fonts.jetbrains-mono
      material-design-icons
    ];
  };
}
