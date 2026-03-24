{
  imports = [
    ./vscode.nix
    ./ghostty.nix
    ./git.nix
    ./gh.nix
    ./gpg.nix
    ./neovim.nix
    ./btop.nix
    ./noctalia.nix
    ./delta.nix
    ./git-cliff.nix
    ./bat.nix
    ./ripgrep.nix
    ./fd.nix
    ./eza.nix
    ./zoxide.nix
  ];

  programs.home-manager.enable = true;
}
