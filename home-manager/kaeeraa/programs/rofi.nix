{config, ...}: let
  colors = config.catppuccin.colors;
in {
  programs.rofi = {
    enable = true;
    font = "JetBrainsMono Nerd Font 10";
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        background-color = mkLiteral colors.base;
        text-color = mkLiteral colors.text;
        border-color = mkLiteral colors.red;
      };
      "window" = {
        transparency = "real";
        background-color = mkLiteral colors.base;
        border = 1;
        border-radius = 8;
        border-color = mkLiteral colors.surface0;
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
        background-color = mkLiteral colors.red;
        text-color = mkLiteral colors.base;
      };
      "entry" = {
        background-color = mkLiteral colors.surface0;
        text-color = mkLiteral colors.text;
      };
      "inputbar" = {
        children = map mkLiteral ["prompt" "entry"];
        background-color = mkLiteral colors.surface0;
        text-color = mkLiteral colors.text;
      };
    };
  };
}
