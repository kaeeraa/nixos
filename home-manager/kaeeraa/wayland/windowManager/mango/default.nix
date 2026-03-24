{pkgs, ...}: let
  mkSettings = s:
    builtins.concatStringsSep "\n" (
      builtins.concatMap (
        k: let
          v = s.${k};
        in
          if builtins.typeOf v == "list"
          then map (x: "${k}=${builtins.toString x}") v
          else ["${k}=${builtins.toString v}"]
      ) (builtins.attrNames s)
    );
in {
  wayland.windowManager.mango = {
    enable = true;
    settings = mkSettings {
      source = [
        "~/.config/mango/noctalia.conf"
      ];

      monitorrule = [
        "name:DP-1,width:1920,height:1080,refresh:165,x:0,y:0,scale:1,vrr:1"
        "name:DP-4,width:1920,height:1080,refresh:165,x:0,y:0,scale:1,vrr:1"

        "name:DVI-D-1,width:1920,height:1080,refresh:60,x:1920,y:0,scale:1,vrr:1"
      ];

      repeat_delay = 300;
      xkb_rules_layout = "us,ru";
      xkb_rules_variant = "workman,";
      xkb_rules_options = "grp:caps_toggle,grp_led:caps,compose:ralt";

      accel_profile = 0; # flat

      syncobj_enable = 1;

      focus_on_activate = 1;
      allow_tearing = 0;
      blur_optimized = 1;
      drag_tile_to_tile = 1;

      borderpx = 2;
      gappih = 5;
      gappiv = 5;
      gappoh = 10;
      gappov = 10;
      blur = 1;
      blur_layer = 0;
      blur_params_radius = 12;
      blur_params_num_passes = 2;
      blur_params_noise = 0.015;
      blur_params_brightness = 1.05;
      blur_params_contrast = 0.9;
      blur_params_saturation = 1.15;
      shadows = 1;
      border_radius = 8;
      focused_opacity = 0.96;
      unfocused_opacity = 0.85;

      cursor_size = 24;
      cursor_theme = "Bibata-Modern-Translucent";

      env = [
        "QT_QPA_PLATFORMTHEME,qt6ct"
      ];

      exec = [
        "mmsg -d disable_monitor,Unknown-1"
      ];

      exec-once = [
        "pkill -9 .quickshell-wra; noctalia-shell"
      ];

      bind = [
        "SUPER,Return,spawn,ghostty"
        "SUPER,Space,spawn_shell,noctalia-shell ipc call launcher toggle"
        "SUPER+ALT,Space,spawn_shell,noctalia-shell ipc call launcher command"
        "SUPER,code:60,spawn_shell,noctalia-shell ipc call launcher emoji"

        "SUPER,Q,killclient"
        "SUPER+SHIFT,R,reload_config"
        "SUPER+SHIFT,W,spawn_shell,pkill -9 .quickshell-wra; noctalia-shell"

        "SUPER,L,spawn,noctalia-shell ipc call lockScreen lock"

        "SUPER,Print,spawn,hyprshot --freeze --clipboard-only --mode region --silent"

        "SUPER,1,view,1"
        "SUPER,2,view,2"
        "SUPER,3,view,3"
        "SUPER,4,view,4"
        "SUPER,5,view,5"
        "SUPER,6,view,6"
        "SUPER,7,view,7"
        "SUPER,8,view,8"
        "SUPER,9,view,9"
        "SUPER,0,view,10"

        "SUPER+SHIFT,1,tag,1"
        "SUPER+SHIFT,2,tag,2"
        "SUPER+SHIFT,3,tag,3"
        "SUPER+SHIFT,4,tag,4"
        "SUPER+SHIFT,5,tag,5"
        "SUPER+SHIFT,6,tag,6"
        "SUPER+SHIFT,7,tag,7"
        "SUPER+SHIFT,8,tag,8"
        "SUPER+SHIFT,9,tag,9"
        "SUPER+SHIFT,0,tag,10"

        "SUPER,Left,resizewin,-20,0"
        "SUPER,Right,resizewin,20,0"
        "SUPER,Up,resizewin,0,-20"
        "SUPER,Down,resizewin,0,20"

        "SUPER+SHIFT,Left,tagmon,DP-1"
        "SUPER+SHIFT,Right,tagmon,DVI-D-1"

        "SUPER,V,togglefloating"
        "SUPER,F,togglefullscreen"

        "NONE,XF86AudioMute,spawn_shell,noctalia-shell ipc call media playPause"
        "NONE,XF86AudioRaiseVolume,spawn_shell,bash ~/Scripts/mediaWheel.sh up"
        "NONE,XF86AudioLowerVolume,spawn_shell,bash ~/Scripts/mediaWheel.sh down"
        "SUPER,XF86AudioMute,spawn_shell,noctalia-shell ipc call volume muteOutput"
        "SUPER,XF86AudioRaiseVolume,spawn_shell,noctalia-shell ipc call volume increase"
        "SUPER,XF86AudioLowerVolume,spawn_shell,noctalia-shell ipc call volume decrease"
        "SUPER+SHIFT,XF86AudioRaiseVolume,spawn_shell,noctalia-shell ipc call brightness increase"
        "SUPER+SHIFT,XF86AudioLowerVolume,spawn_shell,noctalia-shell ipc call brightness decrease"
      ];

      mousebind = [
        "SUPER,btn_left,moveresize,curmove"
        "SUPER,btn_right,moveresize,curresize"
      ];
    };
  };
}
