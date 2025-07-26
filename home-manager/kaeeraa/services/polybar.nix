{
  config,
  pkgs,
  ...
}: let
  colors = config.catppuccin.colors;
in {
  services.polybar = {
    enable = true;
    package = pkgs.polybarFull;
    script = "";
    config = {
      "colors" = {
        background = colors.base;
        foreground = colors.text;
        primary = colors.red;
        secondary = colors.blue;
        alert = colors.pink;
        module-fg = colors.text;
        module-bg = colors.surface0;
      };

      "settings" = {
        screenchange-reload = true;
        compositing = "over";
        pseudo-transparency = true;
      };

      "bar/main" = {
        monitor = "DP-4";
        width = "100%";
        height = "28pt";
        radius = 0;
        fixed-center = true;
        background = "\${colors.background}";
        foreground = "\${colors.foreground}";
        font-0 = "JetBrainsMono Nerd Font:size=10;3";
        font-1 = "Material Icons:size=12;3";
        modules-left = "workspaces";
        modules-center = "title";
        modules-right = "cpu memory pulseaudio date";
        tray-position = "right";
      };

      "bar/main2" = {
        monitor = "DVI-D-0";
        width = "100%";
        height = "28pt";
        radius = 0;
        fixed-center = true;
        background = "\${colors.background}";
        foreground = "\${colors.foreground}";
        font-0 = "JetBrainsMono Nerd Font:size=10;3";
        font-1 = "Material Icons:size=12;3";
        modules-left = "workspaces";
        modules-center = "title";
        modules-right = "cpu memory pulseaudio date";
        tray-position = "right";
      };

      "module/workspaces" = {
        type = "internal/i3";
        format = "<label-state>";
        label-focused = "%index%";
        label-focused-foreground = "\${colors.primary}";
        label-focused-font = 1;
        label-focused-padding = 1;
        label-unfocused = "%index%";
        label-unfocused-padding = 1;
        label-urgent = "%index%!";
        label-urgent-background = "\${colors.alert}";
        label-urgent-padding = 1;
      };

      "module/title" = {
        type = "internal/xwindow";
        format = "<label>";
        label = "%title:0:60:...%";
        label-maxlen = 75;
      };

      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;
        format = "<label>";
        label = " %percentage:2%%";
        label-font = 1;
      };

      "module/memory" = {
        type = "internal/memory";
        interval = 2;
        format = "<label>";
        label = "󰍛 %gb_used%";
        label-font = 1;
      };

      "module/pulseaudio" = {
        type = "internal/pulseaudio";
        format-volume = "<label-volume>";
        label-volume = " %percentage%%";
        label-volume-font = 1;
        label-muted = " muted";
        label-muted-font = 1;
        label-muted-foreground = "\${colors.alert}";
      };

      "module/date" = {
        type = "internal/date";
        interval = 1;
        date = "%H:%M";
        label = " %date%";
        label-font = 1;
        label-foreground = "\${colors.primary}";
      };
    };
  };
}
