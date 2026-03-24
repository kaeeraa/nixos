{pkgs, ...}: {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    hooks = {
      preCommit = "/home/kaeeraa/.config/git/hooks/pre-commit";
      commitMsg = "/home/kaeeraa/.config/git/hooks/commit-msg";
    };
    settings = {
      user = {
        name = "Kaeeraa";
        email = "kaeeraa@nebula-nook.ru";
      };
      alias = {
        st = "status";
        co = "checkout";
        br = "branch";
        ci = "commit";
        lg = "log --oneline --graph --all --decorate --color";
        undo = "reset --soft HEAD~1";
        unstage = "reset HEAD --";
        pu = "push";
        puf = "push --force-with-lease";
      };
      help = {
        autocorrect = 2;
      };
      color = {
        ui = "true";
        diff = "true";
        branch = "true";
        status = "true";
      };
      core = {
        editor = "nvim";
      };
      pull = {
        rebase = true;
      };
      push = {
        default = "simple";
      };
      merge = {
        conflictStyle = "diff3";
        ff = "only";
      };
      rebase.autoSquash = true;
      completion.shell = "fish";
      diff = {
        algorithm = "patience";
        colorMoved = "default";
      };
      credential.helper = "cache --timeout=3600, store";
      rerere.enabled = true;
      delta = {
        sideBySide = true;
        navigate = true;
      };
      log = {
        date = "local";
        showSignature = true;
      };
    };
    signing = {
      format = "openpgp";
      key = "53EB0B8547C7F50F";
      signByDefault = true;
    };
    lfs = {
      enable = true;
    };
    ignores = [
      "*.swp"
      "*.bak"
      "*.tmp"
      ".DS_Store"
      "node_modules/"
    ];
  };
}
