{pkgs,...}: {
  security.wrappers = {
    v2rayn = {
      owner = "root";
      group = "root";
      source = "${pkgs.v2rayn}/bin/v2rayN";
      capabilities = "cap_net_admin=ep";
    };
  };
}
