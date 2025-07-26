{pkgs, ...}: {
  home = {
    username = "kaeeraa";
    homeDirectory = "/home/kaeeraa";
    stateVersion = "25.11";

    packages = with pkgs; [
      # System
      nh

      # Development - IDE
      helix

      # Development - Language Servers
      nil

      # Development - Complilers
      python3Full
      nodejs_24
      zulu24

      # Development - Formatters
      alejandra

      # Development - Environment
      direnv

      # Desktop Environment
      xorg.xbacklight
      xclip
      ksnip

      # Networking - Messengers
      ayugram-desktop
    ];

    sessionVariables = {
      TERMINAL = "kitty";
      BROWSER = "zen";
      EDITOR = "hx";
    };
  };
}
