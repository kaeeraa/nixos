{
  services.sxhkd = {
    enable = true;
    keybindings = {
      "super + Return " = "kitty";
      "super + space" = "rofi -show drun";
      "super + q" = "bspc node --close";
      "super + alt + r" = "bspc wm -r";
      "super + shift + r" = "pkill -usr1 -x sxhkd; notify-send 'sxhkd' 'Reloaded config'";
      "super + {1-9,0}" = "bspc desktop -f {1-9,10}";
      "super + ctrl + shift + {Left,Right}" = "bspc desktop -m {next,prev} --follow";
      "super + shift + {1-9,0}" = "bspc node -d '{1-9,10}' --follow";
      "super + shift + {Left,Down,Up,Right}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";
      "super + alt + {Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";
      "super + v" = "bspc node --state \~floating";
      "super + alt + space" = "rofi -show run";
      "super + f" = "bspc node --state \~fullscreen";
      "super + Print" = "ksnip --rectarea";
      "super + shift + Print" = "ksnip --current";
      "super + b" = "rofi-bluetooth";
      "XF86AudioRaiseVolume" = "xbacklight -inc 5 &";
      "XF86AudioLowerVolume" = "xbacklight -dec 5 &";
    };
  };
}
