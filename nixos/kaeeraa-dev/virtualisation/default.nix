{ ... }: {
  imports = [ ./vmware.nix ];
  virtualisation = {
    docker = {
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };
  };
}
