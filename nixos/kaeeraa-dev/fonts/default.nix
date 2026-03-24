{pkgs, ...}: {
  imports = [./fontconfig.nix];

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.blex-mono
      material-design-icons
    ];
  };
}
