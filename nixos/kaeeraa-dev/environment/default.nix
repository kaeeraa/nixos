{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      elegant-sddm

      # Workaround for nh (see nix-community/nh#236)
      doas-sudo-shim

      mangohud
      babelfish
      gnome-keyring
      javaPackages.compiler.temurin-bin.jre-25
      ddcutil
      ddcutil-service
      kdePackages.qttools
      qemu
      quickemu
    ];
    sessionVariables = {
      GBM_BACKEND = "wayland";
      WLR_DRM_NO_ATOMIC = "1";
      NIXOS_OZONE_WL = "1";
      NVIDIA_DISABLE_REQUIRE = "1";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      LIBGL_ALWAYS_INDIRECT = "0";
      MESA_LOADER_DRIVER_OVERRIDE = "nvidia";
      LIBVA_DRIVER_NAME = "nvidia";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      NVD_BACKEND = "direct";
      WLR_NO_HARDWARE_CURSORS = "1";
      # WLR_RENDERER = "vulkan";
    };
  };
}
