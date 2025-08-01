{pkgs, ...}: {
  programs.steam = {
    enable = true;
    package = pkgs.steam.override {
      extraEnv = {
        MANGOHUD = true;
        OBS_VKCAPTURE = true;
      };
    };
    gamescopeSession.enable = true;
    protontricks.enable = true;
    fontPackages = with pkgs; [nerd-fonts.jetbrains-mono];
  };
}
