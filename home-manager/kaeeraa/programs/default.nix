{
  imports = [
    ./rofi.nix
    ./vscode.nix
    ./feh.nix
    ./kitty.nix
    ./git.nix
    ./gh.nix
    ./gpg.nix
  ];

  programs.home-manager.enable = true;
}
