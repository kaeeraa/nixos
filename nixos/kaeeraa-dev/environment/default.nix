{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      elegant-sddm

      # Workaround for nh (see nix-community/nh#236)
      doas-sudo-shim

      mangohud
      babelfish
      gnome-keyring
      javaPackages.compiler.temurin-bin.jre-25
    ];
  };
}
