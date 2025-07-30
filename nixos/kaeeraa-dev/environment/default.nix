{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      (catppuccin-sddm.override {
        flavor = "latte";
        font = "JetBrainsMono Nerd Font";
        fontSize = "9";
        background = ../assets/nixos-wallpaper.png;
        loginBackground = true;
      })

      # Workaround for nh (see nix-community/nh#236)
      (pkgs.writeShellScriptBin "sudo" "doas $@")
      (pkgs.writeShellScriptBin "run0" "doas $@")

      mangohud
    ];
  };
}
