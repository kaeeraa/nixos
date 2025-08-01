{pkgs, ...}: {
  home = {
    username = "windstone";
    homeDirectory = "/home/windstone";
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
    ];

    sessionVariables = {
      EDITOR = "hx";
    };
  };
}
