{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      (catppuccin-sddm.override {
        flavor = "latte";
        font  = "JetBrainsMono Nerd Font";
        fontSize = "9";
        background = ../assets/nixos-wallpaper.png;
        loginBackground = true;
      })
    ];
  };
}
