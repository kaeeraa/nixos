{lib, ...}: let
  colors = {
    base = "#eff1f5";
    mantle = "#e6e9ef";
    crust = "#dce0e8";
    surface0 = "#ccd0da";

    text = "#4c4f69";
    subtext0 = "#6c6f85";
    subtext1 = "#5c5f77";

    red = "#d20f39";
    maroon = "#e64553";
    blue = "#1e66f5";
    lavender = "#7287fd";
    pink = "#ea76cb";
    peach = "#fe640b";
    yellow = "#df8e1d";
    green = "#40a02b";
    teal = "#179299";
  };
in {
  options.catppuccin = with lib; {
    colors = mkOption {
      type = types.attrs;
      default = colors;
      description = "Catppuccin Latte color palette";
    };
  };
}
