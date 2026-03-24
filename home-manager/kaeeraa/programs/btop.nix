{pkgs, ...}: {
  programs.btop = {
    enable = true;
    package = pkgs.btop.overrideAttrs (old: {
      postFixup =
        (old.postFixup or "")
        + ''
          patchelf --add-rpath /run/opengl-driver/lib $out/bin/btop
        '';
    });
  };
}
