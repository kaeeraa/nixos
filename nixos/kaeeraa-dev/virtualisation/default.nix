{...}: {
  imports = [./vmware.nix ./libvirtd.nix];
  virtualisation = {
    spiceUSBRedirection.enable = true;
    docker = {
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };
  };
}
