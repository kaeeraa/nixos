{
  config,
  pkgs,
  ...
}: let
  colors = config.catppuccin.colors;
in {
  services.dunst = {
    enable = true;
    package = pkgs.dunst;
    settings = {
      global = {
        origin = "top-right";
        offset = "24x24";
        alignment = "center";
        width = 300;
        height = 300;
        padding = 16;
        horizontal_padding = 16;
        frame_width = 2;
        separator_height = 2;
        gap_size = 8;

        corner_radius = 8;
        frame_color = colors.surface0;
        separator_color = "frame";

        font = "JetBrainsMono Nerd Font 10";
        line_height = 4;
        format = "<b>%s</b>\\n%b";
        markup = "full";
        word_wrap = "yes";
        ellipsize = "middle";
        ignore_newline = "no";

        transparency = 10;
        idle_threshold = 120;
        show_age_threshold = 60;
        history_length = 20;
        show_indicators = "no";
        stack_duplicates = true;
        hide_duplicate_count = false;

        mouse_left_click = "close_current";
        mouse_middle_click = "close_all";
        mouse_right_click = "do_action";
      };

      urgency_low = {
        background = colors.mantle;
        foreground = colors.text;
        frame_color = colors.surface0;
        timeout = 4;
        icon = "dialog-information";
      };

      urgency_normal = {
        background = colors.mantle;
        foreground = colors.text;
        frame_color = colors.blue;
        timeout = 6;
        icon = "dialog-information";
      };

      urgency_critical = {
        background = colors.mantle;
        foreground = colors.red;
        frame_color = colors.red;
        timeout = 0;
        icon = "dialog-error";
      };

      category_system = {
        frame_color = colors.lavender;
        foreground = colors.lavender;
      };

      category_network = {
        frame_color = colors.blue;
        foreground = colors.blue;
      };
    };
  };
}
