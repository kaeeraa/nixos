{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    setoptions = [
      "HIST_IGNORE_DUPS"
      "SHARE_HISTORY"
      "HIST_FCNTL_LOCK"
      "EXTENDED_HISTORY"
      "RM_STAR_WAIT"
    ];
    shellInit = ''
      CATPPUCCIN_FLAVOR="latte"
    '';

    zsh-autoenv.enable = true;
    shellAliases = {
      doas = "doas su -c $@";
    };
    syntaxHighlighting = {
      enable = true;
      highlighters = ["main" "brackets"];
    };
    ohMyZsh = {
      enable = true;
      theme = "catppuccin";
      customPkgs = with pkgs; [
        zsh-histdb
        zsh-forgit
        zsh-autoenv
        zsh-nix-shell
        zsh-fzf-tab
        zsh-clipboard
        zsh-you-should-use
        zsh-fzf-history-search
        zsh-fast-syntax-highlighting
      ];
    };
  };
}
