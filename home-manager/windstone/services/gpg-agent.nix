{pkgs, ...}: {
  services.gpg-agent = {
    enable = true;
    pinentry = {
      package = pkgs.pinentry-gtk2;
      program = "pinentry";
    };
  };
}
