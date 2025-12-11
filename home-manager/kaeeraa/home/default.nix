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
      clang-tools
      neocmakelsp
      vscode-langservers-extracted
      yaml-language-server
      vue-language-server

      # Development - Complilers
      python313
      nodejs_24
      javaPackages.compiler.temurin-bin.jre-25

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

      # Networking - Bluetooth
      rofi-bluetooth

      # etc
      yandex-music
      easyeffects
      v2rayn
    ];

    sessionVariables = {
      TERMINAL = "kitty";
      BROWSER = "zen";
      EDITOR = "hx";
    };
  };
}
