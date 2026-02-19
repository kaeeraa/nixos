{
  imports = [
    ./rofi.nix
    ./vscode.nix
    ./feh.nix
    ./kitty.nix
    ./git.nix
    ./gh.nix
    ./gpg.nix
    ./neovim.nix
    ./btop.nix
    ./autorandr.nix
  ];

  programs.home-manager.enable = true;
}
