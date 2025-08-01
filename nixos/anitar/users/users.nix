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
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH40U4M9IIt9CjHtjQxkWXHhp6dQ3hHvGrOYca7RM7EB kaeeraa@kaeeraa-dev"
      ];
    };
    windstone = {
      enable = true;
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager" "doas"];
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAG9vLzRoIqyiFTZ7pboRvMh822TMK5Lq64w+AUBI9+Y notwindstone@gmail.com"
      ];
    };
    root = {
      password = null;
    };
  };
}
