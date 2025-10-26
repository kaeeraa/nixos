{config, ...}: let
  colors = config.ayuMirage.colors;
in {
  programs.rofi = {
    enable = true;
    font = "JetBrainsMono Nerd Font 10";
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        background-color = mkLiteral colors.base00;
        text-color = mkLiteral colors.base05;
        border-color = mkLiteral colors.base08;
      };
      "window" = {
        transparency = "real";
        background-color = mkLiteral colors.base00;
        border = 1;
        border-radius = 8;
        border-color = mkLiteral colors.base03;
      };
      "element" = {
        padding = mkLiteral "1px";
        cursor = mkLiteral "pointer";
        border = 0;
        spacing = mkLiteral "5";
        background-color = mkLiteral "inherit";
        text-color = mkLiteral "inherit";
      };
      "element selected" = {
        background-color = mkLiteral colors.base08;
        text-color = mkLiteral colors.base00;
      };
      "entry" = {
        background-color = mkLiteral colors.base03;
        text-color = mkLiteral colors.base05;
      };
      "inputbar" = {
        children = map mkLiteral ["prompt" "entry"];
        background-color = mkLiteral colors.base03;
        text-color = mkLiteral colors.base05;
      };
    };
  };
}
