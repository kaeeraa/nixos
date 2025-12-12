{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      elegant-sddm

      # Workaround for nh (see nix-community/nh#236)
      (pkgs.writeShellScriptBin "sudo" "doas $@")
      (pkgs.writeShellScriptBin "run0" "doas $@")

      mangohud
      babelfish
      gnome-keyring
      javaPackages.compiler.temurin-bin.jre-25
    ];
  };
}
