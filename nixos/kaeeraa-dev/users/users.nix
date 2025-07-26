{
  pkgs,
  inputs,
  ...
}: {
  users.users = {
    kaeeraa = {
      enable = true;
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager" "doas"];
      hashedPassword = "$y$j9T$KGlk.nOmwwucfwh8eFbvv0$lvQi0BNn/p3Xvqfm7xRd7oWiscck.6YqKJT9jRHEFa5";

      packages = [
        inputs.zen-browser.packages.${pkgs.system}.default
      ];
    };
    root = {
      password = null;
    };
  };
}
