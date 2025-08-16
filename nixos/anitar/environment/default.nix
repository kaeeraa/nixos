{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      # Workaround for nh (see nix-community/nh#236)
      (pkgs.writeShellScriptBin "sudo" "doas $@")
      (pkgs.writeShellScriptBin "run0" "doas $@")
      xray
    ];
  };
}
