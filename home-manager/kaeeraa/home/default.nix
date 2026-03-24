{
  pkgs,
  inputs,
  ...
}: {
  home = {
    username = "kaeeraa";
    homeDirectory = "/home/kaeeraa";
    stateVersion = "25.11";

    packages = with pkgs; [
      # System
      nh

      # Development - Language Servers
      nil
      clang-tools
      neocmakelsp
      vscode-langservers-extracted
      yaml-language-server
      vue-language-server

      # Development - Complilers
      python314
      nodejs_24
      javaPackages.compiler.temurin-bin.jre-25

      # Development - Formatters
      alejandra

      # Development - Environment
      direnv

      # Desktop Environment
      hyprshot
      gpu-screen-recorder

      # Networking - Messengers
      inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop

      # Networking - Bluetooth
      rofi-bluetooth

      # etc
      yandex-music
      easyeffects
      v2rayn
      cargo
      gccgo15
      unzip
      fortune
      kdePackages.qt6ct
    ];

    sessionVariables = {
      TERMINAL = "ghostty";
      BROWSER = "zen";
      EDITOR = "nvim";
    };

    shellAliases = {
      "cat" = "bat";
      "grep" = "rg";
      "ls" = "eza --color=auto --icons=auto";
      "du" = "dust";
      "df" = "duf";
      "cd" = "z";
      "man" = "tldr";
    };
  };
}
