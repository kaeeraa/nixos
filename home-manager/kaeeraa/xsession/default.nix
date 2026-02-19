{
  imports = [./windowManager/bspwm.nix];

  xsession = {
    enable = true;
    initExtra = ''
      xinput --set-prop 12 "libinput Accel Profile Enabled" 0 1
      xinput --set-prop 12 "libinput Accel Speed" 0
      xinput --set-prop 12 "libinput Middle Emulation Enabled" 0
      xinput --set-prop 12 "libinput Scrolling Pixel Distance" 15
      xinput --set-prop 12 "libinput High Resolution Wheel Scroll Enabled" 1
      autorandr --load main
    '';
  };
}
