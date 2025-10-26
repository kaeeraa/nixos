{
  config,
  pkgs,
  ...
}: let
  colors = config.ayuMirage.colors;
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
        frame_color = colors.base03;
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
        background = colors.base01;
        foreground = colors.base05;
        frame_color = colors.base03;
        timeout = 4;
        icon = "dialog-information";
      };

      urgency_normal = {
        background = colors.base01;
        foreground = colors.base05;
        frame_color = colors.base0D;
        timeout = 6;
        icon = "dialog-information";
      };

      urgency_critical = {
        background = colors.base01;
        foreground = colors.base08;
        frame_color = colors.base08;
        timeout = 0;
        icon = "dialog-error";
      };

      category_system = {
        frame_color = colors.base0E;
        foreground = colors.base0E;
      };

      category_network = {
        frame_color = colors.base0D;
        foreground = colors.base0D;
      };
    };
  };
}
