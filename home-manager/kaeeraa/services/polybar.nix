{ config, pkgs, ... }:

let
  colors = config.catppuccin.colors;
in {
  services.polybar = {
    enable = true;
    package = pkgs.polybarFull;
    script = ''
      polybar primary &
      polybar secondary &
    '';
    config = {
      "colors" = {
        background = colors.base;
        foreground = colors.text;
        primary = colors.red;
        secondary = colors.blue;
        alert = colors.pink;
        surface = colors.surface0;
        muted = colors.subtext0;
      };

      "global/settings" = {
        screenchange-reload = true;
        compositing = "over";
        pseudo-transparency = false;
        throttle-output = 5;
        throttle-output-for = 10;
      };

      "bar/primary" = {
        monitor = "DP-4";
        height = "38px";
        width = "1904px"; # 1920-(offset-x * 2)
        offset-x = "8px";
        offset-y = "8px";
        radius = 16;
        fixed-center = true;

        background = "\${colors.background}";
        foreground = "\${colors.foreground}";
        border-size = 0;

        padding-left = 0;
        padding-right = 2;
        module-margin = 2;

        font-0 = "JetBrainsMono Nerd Font:size=10;3";
        font-1 = "Material Icons:size=14;3";

        modules-left = "bspwm";
        modules-center = "xwindow";
        modules-right = "cpu memory pipewire date";

        tray-position = "right";
        tray-padding = 2;
        tray-offset-x = -16;
        tray-maxsize = 20;
        tray-background = "\${colors.surface}";

        wm-restack = "bspwm";
        enable-ipc = true;
      };

      "bar/secondary" = {
        monitor = "DVI-D-0";
        "inherit" = "bar/primary";
      };

      "module/bspwm" = {
        type = "internal/bspwm";
        pin-workspaces = true;
        enable-click = true;
        enable-scroll = true;

        label-focused = "%name%";
        label-focused-background = "\${colors.surface}";
        label-focused-foreground = "\${colors.primary}";
        label-focused-padding = 2;
        label-focused-radius = 8;

        label-occupied = "%name%";
        label-occupied-background = "\${colors.surface}";
        label-occupied-padding = 2;
        label-occupied-radius = 8;

        label-urgent = "%name%!";
        label-urgent-background = "\${colors.alert}";
        label-urgent-foreground = "\${colors.background}";
        label-urgent-padding = 2;
        label-urgent-radius = 8;

        label-empty = "%name%";
        label-empty-foreground = "\${colors.muted}";
        label-empty-padding = 2;
        label-empty-radius = 8;
      };

      "module/xwindow" = {
        type = "internal/xwindow";
        format = "<label>";
        format-background = "\${colors.surface}";
        format-padding = 1;
        format-radius = 8;
        label = "%title:0:50:...%";
        label-maxlen = 60;
      };

      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;
        format = "<label>";
        format-background = "\${colors.surface}";
        format-padding = 1;
        format-radius = 8;
        label = " %percentage:2%%";
        label-font = 1;
      };

      "module/memory" = {
        type = "internal/memory";
        interval = 2;
        format = "<label>";
        format-background = "\${colors.surface}";
        format-padding = 1;
        format-radius = 8;
        label = "󰍛 %gb_used%";
        label-font = 1;
      };

      "module/pipewire" = {
        type = "internal/pulseaudio";
        use-ui-max = false;
        format-volume = "<ramp-volume> <label-volume>";
        format-volume-background = "\${colors.surface}";
        format-volume-padding = 1;
        format-volume-radius = 8;

        format-muted = "<label-muted>";
        format-muted-background = "\${colors.surface}";
        format-muted-padding = 1;
        format-muted-radius = 8;

        label-volume = "%percentage%%";
        label-volume-font = 0;

        label-muted = " muted";
        label-muted-font = 1;
        label-muted-foreground = "\${colors.alert}";

        ramp-volume-0 = "";
        ramp-volume-1 = "";
        ramp-volume-2 = "";
        ramp-volume-foreground = "\${colors.primary}";

        click-right = "${pkgs.pwvucontrol}/bin/pwvucontrol &";
      };

      "module/date" = {
        type = "internal/date";
        interval = 1;
        date = "%H:%M";
        date-alt = "%a %d %b";

        label = " %date%";
        label-font = 1;
        label-background = "\${colors.surface}";
        label-foreground = "\${colors.primary}";
        label-padding = 1;
        label-radius = 8;
      };
    };
  };
}